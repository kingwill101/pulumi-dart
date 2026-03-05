import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/authorization.dart' as authorization;
import 'package:pulumi_azure_native/cosmosdb.dart' as cosmosdb;
import 'package:pulumi_azure_native/logic.dart' as logic;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azure_native/storage.dart' as storage;
import 'package:pulumi_azure_native/web.dart' as web;

class AzureNativeCosmosdbLogicappStack extends pulumi.Stack {
  AzureNativeCosmosdbLogicappStack() : super() {
    final resourceGroup = resources.ResourceGroup('resourceGroup');

    storage.StorageAccount(
      'logicappdemosa',
      args: storage.StorageAccountArgs(
        resourceGroupName: resourceGroup.name,
        sku: storage.Sku(
          name: storage.SkuName.valueStandardLRS.wireValue.output(),
        ).output(),
        kind: storage.Kind.valueStorageV2.wireValue.output(),
      ),
    );

    final cosmosdbAccount = cosmosdb.DatabaseAccount(
      'logicappdemo-cdb',
      args: cosmosdb.DatabaseAccountArgs(
        resourceGroupName: resourceGroup.name,
        databaseAccountOfferType: cosmosdb
            .DatabaseAccountOfferType
            .valueStandard
            .output(),
        locations: [
          cosmosdb.Location(
            locationName: resourceGroup.location,
            failoverPriority: 0.output(),
          ),
        ].output(),
        consistencyPolicy: cosmosdb.ConsistencyPolicy(
          defaultConsistencyLevel: cosmosdb.DefaultConsistencyLevel.valueSession
              .output(),
        ).output(),
      ),
    );

    final db = cosmosdb.SqlResourceSqlDatabase(
      'sqldb',
      args: cosmosdb.SqlResourceSqlDatabaseArgs(
        resourceGroupName: resourceGroup.name,
        accountName: cosmosdbAccount.name,
        resource: cosmosdb.SqlDatabaseResource(id: 'sqldb'.output()).output(),
      ),
    );

    final dbContainer = cosmosdb.SqlResourceSqlContainer(
      'container',
      args: cosmosdb.SqlResourceSqlContainerArgs(
        resourceGroupName: resourceGroup.name,
        accountName: cosmosdbAccount.name,
        databaseName: db.name,
        resource: cosmosdb.SqlContainerResource(
          id: 'container'.output(),
          partitionKey: cosmosdb.ContainerPartitionKey(
            paths: ['/myPartitionKey'].output(),
            kind: 'Hash'.output(),
          ).output(),
        ).output(),
      ),
    );

    final accountKeys =
        pulumi.Output.tuple(cosmosdbAccount.name, resourceGroup.name).apply((
          pair,
        ) {
          return cosmosdb.listDatabaseAccountKeys(
            cosmosdb.ListDatabaseAccountKeysArgs(
              accountName: pair.$1.output(),
              resourceGroupName: pair.$2.output(),
            ),
          );
        });

    final apiId =
        pulumi.Output.tuple(
          pulumi.output(authorization.getClientConfig()),
          resourceGroup.location,
        ).apply<String>((pair) {
          return '/subscriptions/${pair.$1.subscriptionId}/providers/Microsoft.Web/locations/${pair.$2}/managedApis/documentdb';
        });

    final connectionParameterValues =
        pulumi.Output.tuple(
          cosmosdbAccount.name,
          accountKeys,
        ).apply<Map<String, String>>((pair) {
          return <String, String>{
            'databaseAccount': pair.$1,
            'accessKey': pair.$2.primaryMasterKey,
          };
        });

    final connection = web.Connection(
      'cosmosdbConnection',
      args: web.ConnectionArgs(
        resourceGroupName: resourceGroup.name,
        properties: web.ApiConnectionDefinitionProperties(
          displayName: 'cosmosdb_connection'.output(),
          api: web.ApiReference(id: apiId).output(),
          parameterValues: connectionParameterValues,
        ).output(),
      ),
    );

    final cosmosPath = pulumi.Output.tuple(db.name, dbContainer.name)
        .apply<String>((pair) {
          return '/dbs/${pair.$1}/colls/${pair.$2}/docs';
        });

    final connectionBindings = pulumi.Output.tuple(connection.id, apiId)
        .apply<Map<String, dynamic>>((pair) {
          return <String, dynamic>{
            'documentdb': <String, dynamic>{
              'connectionId': pair.$1,
              'connectionName': 'logicapp-cosmosdb-connection',
              'id': pair.$2,
            },
          };
        });

    final workflow = logic.Workflow(
      'httpToCosmos',
      args: logic.WorkflowArgs(
        resourceGroupName: resourceGroup.name,
        definition: <String, dynamic>{
          r'$schema':
              'https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#',
          'contentVersion': '1.0.0.0',
          'parameters': <String, dynamic>{
            r'$connections': <String, dynamic>{
              'defaultValue': <String, dynamic>{},
              'type': 'Object',
            },
          },
          'triggers': <String, dynamic>{
            'Receive_post': <String, dynamic>{
              'type': 'Request',
              'kind': 'Http',
              'inputs': <String, dynamic>{
                'method': 'POST',
                'schema': <String, dynamic>{
                  'properties': <String, dynamic>{},
                  'type': 'object',
                },
              },
            },
          },
          'actions': <String, dynamic>{
            'write_body': <String, dynamic>{
              'type': 'ApiConnection',
              'inputs': <String, dynamic>{
                'body': <String, dynamic>{
                  'data': '@triggerBody()',
                  'id': '@utcNow()',
                },
                'host': <String, dynamic>{
                  r'$connection': <String, dynamic>{
                    'name':
                        "@parameters('\$connections')['documentdb']['connectionId']",
                  },
                },
                'method': 'post',
                'path': cosmosPath,
              },
            },
          },
        }.output(),
        parameters: <String, logic.WorkflowParameter>{
          r'$connections': logic.WorkflowParameter(value: connectionBindings),
        }.output(),
      ),
    );

    final endpoint = pulumi.Output.tuple(resourceGroup.name, workflow.name)
        .apply((pair) async {
          final callbackUrl = await logic.listWorkflowTriggerCallbackUrl(
            logic.ListWorkflowTriggerCallbackUrlArgs(
              resourceGroupName: pair.$1.output(),
              workflowName: pair.$2.output(),
              triggerName: 'Receive_post'.output(),
            ),
          );
          return callbackUrl.value;
        });

    registerOutputs(<String, pulumi.Output<dynamic>>{'endpoint': endpoint});
  }
}
