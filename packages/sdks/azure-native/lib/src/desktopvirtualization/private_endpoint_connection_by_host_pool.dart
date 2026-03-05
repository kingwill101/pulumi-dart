import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_by_host_pool_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// The Private Endpoint Connection resource.
///
/// Uses Azure REST API version 2024-04-03. In version 2.x of the Azure Native provider, it used API version 2022-10-14-preview.
///
/// Other available API versions: 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnection_UpdateByHostPool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnectionByHostPool = new AzureNative.DesktopVirtualization.PrivateEndpointConnectionByHostPool("privateEndpointConnectionByHostPool", new()
///     {
///         HostPoolName = "hostPool1",
///         PrivateEndpointConnectionName = "hostPool1.377103f1-5179-4bdf-8556-4cdd3207cc5b",
///         PrivateLinkServiceConnectionState = new AzureNative.DesktopVirtualization.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             ActionsRequired = "None",
///             Description = "Approved by admin@consoto.com",
///             Status = AzureNative.DesktopVirtualization.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "resourceGroup1",
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
/// 	desktopvirtualization "github.com/pulumi/pulumi-azure-native-sdk/desktopvirtualization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := desktopvirtualization.NewPrivateEndpointConnectionByHostPool(ctx, "privateEndpointConnectionByHostPool", &desktopvirtualization.PrivateEndpointConnectionByHostPoolArgs{
/// 			HostPoolName:                  pulumi.String("hostPool1"),
/// 			PrivateEndpointConnectionName: pulumi.String("hostPool1.377103f1-5179-4bdf-8556-4cdd3207cc5b"),
/// 			PrivateLinkServiceConnectionState: &desktopvirtualization.PrivateLinkServiceConnectionStateArgs{
/// 				ActionsRequired: pulumi.String("None"),
/// 				Description:     pulumi.String("Approved by admin@consoto.com"),
/// 				Status:          pulumi.String(desktopvirtualization.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroup1"),
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
/// import com.pulumi.azurenative.desktopvirtualization.PrivateEndpointConnectionByHostPool;
/// import com.pulumi.azurenative.desktopvirtualization.PrivateEndpointConnectionByHostPoolArgs;
/// import com.pulumi.azurenative.desktopvirtualization.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var privateEndpointConnectionByHostPool = new PrivateEndpointConnectionByHostPool("privateEndpointConnectionByHostPool", PrivateEndpointConnectionByHostPoolArgs.builder()
///             .hostPoolName("hostPool1")
///             .privateEndpointConnectionName("hostPool1.377103f1-5179-4bdf-8556-4cdd3207cc5b")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .actionsRequired("None")
///                 .description("Approved by admin@consoto.com")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("resourceGroup1")
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
/// const privateEndpointConnectionByHostPool = new azure_native.desktopvirtualization.PrivateEndpointConnectionByHostPool("privateEndpointConnectionByHostPool", {
///     hostPoolName: "hostPool1",
///     privateEndpointConnectionName: "hostPool1.377103f1-5179-4bdf-8556-4cdd3207cc5b",
///     privateLinkServiceConnectionState: {
///         actionsRequired: "None",
///         description: "Approved by admin@consoto.com",
///         status: azure_native.desktopvirtualization.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "resourceGroup1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection_by_host_pool = azure_native.desktopvirtualization.PrivateEndpointConnectionByHostPool("privateEndpointConnectionByHostPool",
///     host_pool_name="hostPool1",
///     private_endpoint_connection_name="hostPool1.377103f1-5179-4bdf-8556-4cdd3207cc5b",
///     private_link_service_connection_state={
///         "actions_required": "None",
///         "description": "Approved by admin@consoto.com",
///         "status": azure_native.desktopvirtualization.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="resourceGroup1")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnectionByHostPool:
///     type: azure-native:desktopvirtualization:PrivateEndpointConnectionByHostPool
///     properties:
///       hostPoolName: hostPool1
///       privateEndpointConnectionName: hostPool1.377103f1-5179-4bdf-8556-4cdd3207cc5b
///       privateLinkServiceConnectionState:
///         actionsRequired: None
///         description: Approved by admin@consoto.com
///         status: Approved
///       resourceGroupName: resourceGroup1
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
/// $ pulumi import azure-native:desktopvirtualization:PrivateEndpointConnectionByHostPool hostPool1.377103f1-5179-4bdf-8556-4cdd3207cc5b /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DesktopVirtualization/hostPools/{hostPoolName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnectionByHostPool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The group ids for the private endpoint resource.
  late final pulumi.Output<List<String>> groupIds;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The private endpoint resource.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionByHostPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionByHostPool]. {@macro pulumi_desktopvirtualization_private_endpoint_connection_by_host_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionByHostPool(
    String name, {
    PrivateEndpointConnectionByHostPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:desktopvirtualization:PrivateEndpointConnectionByHostPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
