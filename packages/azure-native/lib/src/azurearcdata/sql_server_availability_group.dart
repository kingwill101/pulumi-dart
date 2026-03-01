import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_availability_group_args.dart';
import 'sql_server_availability_group_resource_properties_response.dart';
import 'system_data_response.dart';

/// Arc Sql Server Availability Group
///
/// Uses Azure REST API version 2025-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-01-01.
///
/// Other available API versions: 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Arc Sql Server availability group.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlServerAvailabilityGroup = new AzureNative.AzureArcData.SqlServerAvailabilityGroup("sqlServerAvailabilityGroup", new()
///     {
///         AvailabilityGroupName = "testAG",
///         Location = "southeastasia",
///         Properties = new AzureNative.AzureArcData.Inputs.SqlServerAvailabilityGroupResourcePropertiesArgs
///         {
///             Databases = new AzureNative.AzureArcData.Inputs.SqlServerAvailabilityGroupResourcePropertiesDatabasesArgs
///             {
///                 Value = new[]
///                 {
///                     new AzureNative.AzureArcData.Inputs.SqlAvailabilityGroupDatabaseReplicaResourcePropertiesArgs
///                     {
///                         DatabaseName = "db1",
///                     },
///                     new AzureNative.AzureArcData.Inputs.SqlAvailabilityGroupDatabaseReplicaResourcePropertiesArgs
///                     {
///                         DatabaseName = "db2",
///                     },
///                 },
///             },
///             Info = new AzureNative.AzureArcData.Inputs.AvailabilityGroupInfoArgs
///             {
///                 BasicFeatures = false,
///                 DbFailover = true,
///                 DtcSupport = false,
///                 FailureConditionLevel = 3,
///                 HealthCheckTimeout = 30000,
///                 IsContained = false,
///                 IsDistributed = false,
///                 RequiredSynchronizedSecondariesToCommit = 0,
///             },
///             Replicas = new AzureNative.AzureArcData.Inputs.SqlServerAvailabilityGroupResourcePropertiesReplicasArgs
///             {
///                 Value = new[]
///                 {
///                     new AzureNative.AzureArcData.Inputs.SqlAvailabilityGroupReplicaResourcePropertiesArgs
///                     {
///                         Configure = new AzureNative.AzureArcData.Inputs.AvailabilityGroupConfigureArgs
///                         {
///                             BackupPriority = 50,
///                             EndpointUrl = "TCP://mytest60-0.mytest60-svc:5022",
///                             SessionTimeout = 10,
///                         },
///                         ReplicaName = "testSqlServer\\INST1",
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "testrg",
///         SqlServerInstanceName = "testSqlServer_INST1",
///         Tags =
///         {
///             { "mytag", "myval" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	azurearcdata "github.com/pulumi/pulumi-azure-native-sdk/azurearcdata/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurearcdata.NewSqlServerAvailabilityGroup(ctx, "sqlServerAvailabilityGroup", &azurearcdata.SqlServerAvailabilityGroupArgs{
/// 			AvailabilityGroupName: pulumi.String("testAG"),
/// 			Location:              pulumi.String("southeastasia"),
/// 			Properties: &azurearcdata.SqlServerAvailabilityGroupResourcePropertiesArgs{
/// 				Databases: &azurearcdata.SqlServerAvailabilityGroupResourcePropertiesDatabasesArgs{
/// 					Value: azurearcdata.SqlAvailabilityGroupDatabaseReplicaResourcePropertiesArray{
/// 						&azurearcdata.SqlAvailabilityGroupDatabaseReplicaResourcePropertiesArgs{
/// 							DatabaseName: pulumi.String("db1"),
/// 						},
/// 						&azurearcdata.SqlAvailabilityGroupDatabaseReplicaResourcePropertiesArgs{
/// 							DatabaseName: pulumi.String("db2"),
/// 						},
/// 					},
/// 				},
/// 				Info: &azurearcdata.AvailabilityGroupInfoArgs{
/// 					BasicFeatures:                           pulumi.Bool(false),
/// 					DbFailover:                              pulumi.Bool(true),
/// 					DtcSupport:                              pulumi.Bool(false),
/// 					FailureConditionLevel:                   pulumi.Int(3),
/// 					HealthCheckTimeout:                      pulumi.Int(30000),
/// 					IsContained:                             pulumi.Bool(false),
/// 					IsDistributed:                           pulumi.Bool(false),
/// 					RequiredSynchronizedSecondariesToCommit: pulumi.Int(0),
/// 				},
/// 				Replicas: &azurearcdata.SqlServerAvailabilityGroupResourcePropertiesReplicasArgs{
/// 					Value: azurearcdata.SqlAvailabilityGroupReplicaResourcePropertiesArray{
/// 						&azurearcdata.SqlAvailabilityGroupReplicaResourcePropertiesArgs{
/// 							Configure: &azurearcdata.AvailabilityGroupConfigureArgs{
/// 								BackupPriority: pulumi.Int(50),
/// 								EndpointUrl:    pulumi.String("TCP://mytest60-0.mytest60-svc:5022"),
/// 								SessionTimeout: pulumi.Int(10),
/// 							},
/// 							ReplicaName: pulumi.String("testSqlServer\\INST1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName:     pulumi.String("testrg"),
/// 			SqlServerInstanceName: pulumi.String("testSqlServer_INST1"),
/// 			Tags: pulumi.StringMap{
/// 				"mytag": pulumi.String("myval"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.azurearcdata.SqlServerAvailabilityGroup;
/// import com.pulumi.azurenative.azurearcdata.SqlServerAvailabilityGroupArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.SqlServerAvailabilityGroupResourcePropertiesArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.SqlServerAvailabilityGroupResourcePropertiesDatabasesArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.AvailabilityGroupInfoArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.SqlServerAvailabilityGroupResourcePropertiesReplicasArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var sqlServerAvailabilityGroup = new SqlServerAvailabilityGroup("sqlServerAvailabilityGroup", SqlServerAvailabilityGroupArgs.builder()
///             .availabilityGroupName("testAG")
///             .location("southeastasia")
///             .properties(SqlServerAvailabilityGroupResourcePropertiesArgs.builder()
///                 .databases(SqlServerAvailabilityGroupResourcePropertiesDatabasesArgs.builder()
///                     .value(
///                         SqlAvailabilityGroupDatabaseReplicaResourcePropertiesArgs.builder()
///                             .databaseName("db1")
///                             .build(),
///                         SqlAvailabilityGroupDatabaseReplicaResourcePropertiesArgs.builder()
///                             .databaseName("db2")
///                             .build())
///                     .build())
///                 .info(AvailabilityGroupInfoArgs.builder()
///                     .basicFeatures(false)
///                     .dbFailover(true)
///                     .dtcSupport(false)
///                     .failureConditionLevel(3)
///                     .healthCheckTimeout(30000)
///                     .isContained(false)
///                     .isDistributed(false)
///                     .requiredSynchronizedSecondariesToCommit(0)
///                     .build())
///                 .replicas(SqlServerAvailabilityGroupResourcePropertiesReplicasArgs.builder()
///                     .value(SqlAvailabilityGroupReplicaResourcePropertiesArgs.builder()
///                         .configure(AvailabilityGroupConfigureArgs.builder()
///                             .backupPriority(50)
///                             .endpointUrl("TCP://mytest60-0.mytest60-svc:5022")
///                             .sessionTimeout(10)
///                             .build())
///                         .replicaName("testSqlServer\\INST1")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("testrg")
///             .sqlServerInstanceName("testSqlServer_INST1")
///             .tags(Map.of("mytag", "myval"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const sqlServerAvailabilityGroup = new azure_native.azurearcdata.SqlServerAvailabilityGroup("sqlServerAvailabilityGroup", {
///     availabilityGroupName: "testAG",
///     location: "southeastasia",
///     properties: {
///         databases: {
///             value: [
///                 {
///                     databaseName: "db1",
///                 },
///                 {
///                     databaseName: "db2",
///                 },
///             ],
///         },
///         info: {
///             basicFeatures: false,
///             dbFailover: true,
///             dtcSupport: false,
///             failureConditionLevel: 3,
///             healthCheckTimeout: 30000,
///             isContained: false,
///             isDistributed: false,
///             requiredSynchronizedSecondariesToCommit: 0,
///         },
///         replicas: {
///             value: [{
///                 configure: {
///                     backupPriority: 50,
///                     endpointUrl: "TCP://mytest60-0.mytest60-svc:5022",
///                     sessionTimeout: 10,
///                 },
///                 replicaName: "testSqlServer\\INST1",
///             }],
///         },
///     },
///     resourceGroupName: "testrg",
///     sqlServerInstanceName: "testSqlServer_INST1",
///     tags: {
///         mytag: "myval",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_server_availability_group = azure_native.azurearcdata.SqlServerAvailabilityGroup("sqlServerAvailabilityGroup",
///     availability_group_name="testAG",
///     location="southeastasia",
///     properties={
///         "databases": {
///             "value": [
///                 {
///                     "database_name": "db1",
///                 },
///                 {
///                     "database_name": "db2",
///                 },
///             ],
///         },
///         "info": {
///             "basic_features": False,
///             "db_failover": True,
///             "dtc_support": False,
///             "failure_condition_level": 3,
///             "health_check_timeout": 30000,
///             "is_contained": False,
///             "is_distributed": False,
///             "required_synchronized_secondaries_to_commit": 0,
///         },
///         "replicas": {
///             "value": [{
///                 "configure": {
///                     "backup_priority": 50,
///                     "endpoint_url": "TCP://mytest60-0.mytest60-svc:5022",
///                     "session_timeout": 10,
///                 },
///                 "replica_name": "testSqlServer\\INST1",
///             }],
///         },
///     },
///     resource_group_name="testrg",
///     sql_server_instance_name="testSqlServer_INST1",
///     tags={
///         "mytag": "myval",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sqlServerAvailabilityGroup:
///     type: azure-native:azurearcdata:SqlServerAvailabilityGroup
///     properties:
///       availabilityGroupName: testAG
///       location: southeastasia
///       properties:
///         databases:
///           value:
///             - databaseName: db1
///             - databaseName: db2
///         info:
///           basicFeatures: false
///           dbFailover: true
///           dtcSupport: false
///           failureConditionLevel: 3
///           healthCheckTimeout: 30000
///           isContained: false
///           isDistributed: false
///           requiredSynchronizedSecondariesToCommit: 0
///         replicas:
///           value:
///             - configure:
///                 backupPriority: 50
///                 endpointUrl: TCP://mytest60-0.mytest60-svc:5022
///                 sessionTimeout: 10
///               replicaName: testSqlServer\INST1
///       resourceGroupName: testrg
///       sqlServerInstanceName: testSqlServer_INST1
///       tags:
///         mytag: myval
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:azurearcdata:SqlServerAvailabilityGroup testAG /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureArcData/sqlServerInstances/{sqlServerInstanceName}/availabilityGroups/{availabilityGroupName}
/// ```
class SqlServerAvailabilityGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of Arc Sql Server availability group
  late final pulumi.Output<SqlServerAvailabilityGroupResourcePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqlServerAvailabilityGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlServerAvailabilityGroup]. {@macro pulumi_azurearcdata_sql_server_availability_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlServerAvailabilityGroup(
    String name, {
    SqlServerAvailabilityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurearcdata:SqlServerAvailabilityGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<SqlServerAvailabilityGroupResourcePropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
