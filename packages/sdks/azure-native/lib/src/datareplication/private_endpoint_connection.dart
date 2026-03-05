import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_connection_response_properties_response.dart';
import 'system_data_response.dart';

/// Represents private endpoint connection.
///
/// Uses Azure REST API version 2024-09-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Updates the Private Endpoint Connection.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.DataReplication.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "jitf",
///         Properties = new AzureNative.DataReplication.Inputs.PrivateEndpointConnectionResponsePropertiesArgs
///         {
///             PrivateEndpoint = new AzureNative.DataReplication.Inputs.PrivateEndpointArgs
///             {
///                 Id = "cwcdqoynostmqwdwy",
///             },
///             PrivateLinkServiceConnectionState = new AzureNative.DataReplication.Inputs.PrivateLinkServiceConnectionStateArgs
///             {
///                 ActionsRequired = "afwbq",
///                 Description = "y",
///                 Status = AzureNative.DataReplication.PrivateEndpointConnectionStatus.Approved,
///             },
///         },
///         ResourceGroupName = "rgswagger_2024-09-01",
///         VaultName = "4",
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
/// 	datareplication "github.com/pulumi/pulumi-azure-native-sdk/datareplication/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datareplication.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &datareplication.PrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("jitf"),
/// 			Properties: &datareplication.PrivateEndpointConnectionResponsePropertiesArgs{
/// 				PrivateEndpoint: &datareplication.PrivateEndpointArgs{
/// 					Id: pulumi.String("cwcdqoynostmqwdwy"),
/// 				},
/// 				PrivateLinkServiceConnectionState: &datareplication.PrivateLinkServiceConnectionStateArgs{
/// 					ActionsRequired: pulumi.String("afwbq"),
/// 					Description:     pulumi.String("y"),
/// 					Status:          pulumi.String(datareplication.PrivateEndpointConnectionStatusApproved),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgswagger_2024-09-01"),
/// 			VaultName:         pulumi.String("4"),
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
/// import com.pulumi.azurenative.datareplication.PrivateEndpointConnection;
/// import com.pulumi.azurenative.datareplication.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.datareplication.inputs.PrivateEndpointConnectionResponsePropertiesArgs;
/// import com.pulumi.azurenative.datareplication.inputs.PrivateEndpointArgs;
/// import com.pulumi.azurenative.datareplication.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var privateEndpointConnection = new PrivateEndpointConnection("privateEndpointConnection", PrivateEndpointConnectionArgs.builder()
///             .privateEndpointConnectionName("jitf")
///             .properties(PrivateEndpointConnectionResponsePropertiesArgs.builder()
///                 .privateEndpoint(PrivateEndpointArgs.builder()
///                     .id("cwcdqoynostmqwdwy")
///                     .build())
///                 .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                     .actionsRequired("afwbq")
///                     .description("y")
///                     .status("Approved")
///                     .build())
///                 .build())
///             .resourceGroupName("rgswagger_2024-09-01")
///             .vaultName("4")
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
/// const privateEndpointConnection = new azure_native.datareplication.PrivateEndpointConnection("privateEndpointConnection", {
///     privateEndpointConnectionName: "jitf",
///     properties: {
///         privateEndpoint: {
///             id: "cwcdqoynostmqwdwy",
///         },
///         privateLinkServiceConnectionState: {
///             actionsRequired: "afwbq",
///             description: "y",
///             status: azure_native.datareplication.PrivateEndpointConnectionStatus.Approved,
///         },
///     },
///     resourceGroupName: "rgswagger_2024-09-01",
///     vaultName: "4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.datareplication.PrivateEndpointConnection("privateEndpointConnection",
///     private_endpoint_connection_name="jitf",
///     properties={
///         "private_endpoint": {
///             "id": "cwcdqoynostmqwdwy",
///         },
///         "private_link_service_connection_state": {
///             "actions_required": "afwbq",
///             "description": "y",
///             "status": azure_native.datareplication.PrivateEndpointConnectionStatus.APPROVED,
///         },
///     },
///     resource_group_name="rgswagger_2024-09-01",
///     vault_name="4")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:datareplication:PrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: jitf
///       properties:
///         privateEndpoint:
///           id: cwcdqoynostmqwdwy
///         privateLinkServiceConnectionState:
///           actionsRequired: afwbq
///           description: y
///           status: Approved
///       resourceGroupName: rgswagger_2024-09-01
///       vaultName: '4'
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
/// $ pulumi import azure-native:datareplication:PrivateEndpointConnection kadsmyhrosefybpbwvwxs /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataReplication/replicationVaults/{vaultName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<PrivateEndpointConnectionResponsePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_datareplication_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datareplication:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateEndpointConnectionResponsePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointConnectionResponsePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
