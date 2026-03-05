import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'server_group_private_endpoint_connection_args.dart';
import 'system_data_response.dart';

/// The private endpoint connection resource.
///
/// Uses Azure REST API version 2023-03-02-preview.
///
/// Other available API versions: 2022-11-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Approves or Rejects a Private Endpoint Connection with a given name.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverGroupPrivateEndpointConnection = new AzureNative.DBforPostgreSQL.ServerGroupPrivateEndpointConnection("serverGroupPrivateEndpointConnection", new()
///     {
///         ClusterName = "testcluster",
///         PrivateEndpointConnectionName = "private-endpoint-connection-name",
///         PrivateLinkServiceConnectionState = new AzureNative.DBforPostgreSQL.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "Approved by johndoe@contoso.com",
///             Status = AzureNative.DBforPostgreSQL.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "TestGroup",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewServerGroupPrivateEndpointConnection(ctx, "serverGroupPrivateEndpointConnection", &dbforpostgresql.ServerGroupPrivateEndpointConnectionArgs{
/// 			ClusterName:                   pulumi.String("testcluster"),
/// 			PrivateEndpointConnectionName: pulumi.String("private-endpoint-connection-name"),
/// 			PrivateLinkServiceConnectionState: &dbforpostgresql.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("Approved by johndoe@contoso.com"),
/// 				Status:      pulumi.String(dbforpostgresql.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("TestGroup"),
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
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupPrivateEndpointConnection;
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupPrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var serverGroupPrivateEndpointConnection = new ServerGroupPrivateEndpointConnection("serverGroupPrivateEndpointConnection", ServerGroupPrivateEndpointConnectionArgs.builder()
///             .clusterName("testcluster")
///             .privateEndpointConnectionName("private-endpoint-connection-name")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("Approved by johndoe@contoso.com")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("TestGroup")
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
/// const serverGroupPrivateEndpointConnection = new azure_native.dbforpostgresql.ServerGroupPrivateEndpointConnection("serverGroupPrivateEndpointConnection", {
///     clusterName: "testcluster",
///     privateEndpointConnectionName: "private-endpoint-connection-name",
///     privateLinkServiceConnectionState: {
///         description: "Approved by johndoe@contoso.com",
///         status: azure_native.dbforpostgresql.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "TestGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_group_private_endpoint_connection = azure_native.dbforpostgresql.ServerGroupPrivateEndpointConnection("serverGroupPrivateEndpointConnection",
///     cluster_name="testcluster",
///     private_endpoint_connection_name="private-endpoint-connection-name",
///     private_link_service_connection_state={
///         "description": "Approved by johndoe@contoso.com",
///         "status": azure_native.dbforpostgresql.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="TestGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   serverGroupPrivateEndpointConnection:
///     type: azure-native:dbforpostgresql:ServerGroupPrivateEndpointConnection
///     properties:
///       clusterName: testcluster
///       privateEndpointConnectionName: private-endpoint-connection-name
///       privateLinkServiceConnectionState:
///         description: Approved by johndoe@contoso.com
///         status: Approved
///       resourceGroupName: TestGroup
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
/// $ pulumi import azure-native:dbforpostgresql:ServerGroupPrivateEndpointConnection private-endpoint-connection-name /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/{clusterName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class ServerGroupPrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The group ids for the private endpoint resource.
  late final pulumi.Output<List<String>> groupIds;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The private endpoint resource.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;

  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse>
  privateLinkServiceConnectionState;

  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ServerGroupPrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerGroupPrivateEndpointConnection]. {@macro pulumi_dbforpostgresql_server_group_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerGroupPrivateEndpointConnection(
    String name, {
    ServerGroupPrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:dbforpostgresql:ServerGroupPrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>(
      'privateEndpoint',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PrivateEndpointResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    privateLinkServiceConnectionState =
        registerOutput<PrivateLinkServiceConnectionStateResponse>(
          'privateLinkServiceConnectionState',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return PrivateLinkServiceConnectionStateResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
