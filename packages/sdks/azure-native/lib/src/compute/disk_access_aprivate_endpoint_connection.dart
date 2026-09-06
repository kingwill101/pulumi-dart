import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_access_aprivate_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// The Private Endpoint Connection resource.
///
/// Uses Azure REST API version 2024-03-02. In version 2.x of the Azure Native provider, it used API version 2022-07-02.
///
/// Other available API versions: 2022-07-02, 2023-01-02, 2023-04-02, 2023-10-02, 2025-01-02, 2026-03-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### approve a Private Endpoint Connection under a disk access resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var diskAccessAPrivateEndpointConnection = new AzureNative.Compute.DiskAccessAPrivateEndpointConnection("diskAccessAPrivateEndpointConnection", new()
///     {
///         DiskAccessName = "myDiskAccess",
///         PrivateEndpointConnectionName = "myPrivateEndpointConnection",
///         PrivateLinkServiceConnectionState = new AzureNative.Compute.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "Approving myPrivateEndpointConnection",
///             Status = AzureNative.Compute.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDiskAccessAPrivateEndpointConnection(ctx, "diskAccessAPrivateEndpointConnection", &compute.DiskAccessAPrivateEndpointConnectionArgs{
/// 			DiskAccessName:                pulumi.String("myDiskAccess"),
/// 			PrivateEndpointConnectionName: pulumi.String("myPrivateEndpointConnection"),
/// 			PrivateLinkServiceConnectionState: &compute.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("Approving myPrivateEndpointConnection"),
/// 				Status:      pulumi.String(compute.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_compute_diskaccessaprivateendpointconnection" "diskAccessAPrivateEndpointConnection" {
///   disk_access_name                 = "myDiskAccess"
///   private_endpoint_connection_name = "myPrivateEndpointConnection"
///   private_link_service_connection_state = {
///     description = "Approving myPrivateEndpointConnection"
///     status      = "Approved"
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.compute.DiskAccessAPrivateEndpointConnection;
/// import com.pulumi.azurenative.compute.DiskAccessAPrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.compute.inputs.PrivateLinkServiceConnectionStateArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var diskAccessAPrivateEndpointConnection = new DiskAccessAPrivateEndpointConnection("diskAccessAPrivateEndpointConnection", DiskAccessAPrivateEndpointConnectionArgs.builder()
///             .diskAccessName("myDiskAccess")
///             .privateEndpointConnectionName("myPrivateEndpointConnection")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("Approving myPrivateEndpointConnection")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const diskAccessAPrivateEndpointConnection = new azure_native.compute.DiskAccessAPrivateEndpointConnection("diskAccessAPrivateEndpointConnection", {
///     diskAccessName: "myDiskAccess",
///     privateEndpointConnectionName: "myPrivateEndpointConnection",
///     privateLinkServiceConnectionState: {
///         description: "Approving myPrivateEndpointConnection",
///         status: azure_native.compute.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk_access_a_private_endpoint_connection = azure_native.compute.DiskAccessAPrivateEndpointConnection("diskAccessAPrivateEndpointConnection",
///     disk_access_name="myDiskAccess",
///     private_endpoint_connection_name="myPrivateEndpointConnection",
///     private_link_service_connection_state={
///         "description": "Approving myPrivateEndpointConnection",
///         "status": azure_native.compute.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   diskAccessAPrivateEndpointConnection:
///     type: azure-native:compute:DiskAccessAPrivateEndpointConnection
///     properties:
///       diskAccessName: myDiskAccess
///       privateEndpointConnectionName: myPrivateEndpointConnection
///       privateLinkServiceConnectionState:
///         description: Approving myPrivateEndpointConnection
///         status: Approved
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:compute:DiskAccessAPrivateEndpointConnection myPrivateEndpointConnectionName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/diskAccesses/{diskAccessName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class DiskAccessAPrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource of private end point.
  late final pulumi.Output<PrivateEndpointResponse> privateEndpoint;
  /// A collection of information about the state of the connection between DiskAccess and Virtual Network.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DiskAccessAPrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiskAccessAPrivateEndpointConnection]. {@macro pulumi_compute_disk_access_aprivate_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiskAccessAPrivateEndpointConnection(
    String name, {
    DiskAccessAPrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:DiskAccessAPrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DiskAccessAPrivateEndpointConnection] resource.
  DiskAccessAPrivateEndpointConnection.reference(String urn)
    : super(
        'azure-native:compute:DiskAccessAPrivateEndpointConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
