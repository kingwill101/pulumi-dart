import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_hsm_cluster_private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// The private endpoint connection resource.
///
/// Uses Azure REST API version 2024-06-30-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-31-preview.
///
/// Other available API versions: 2022-08-31-preview, 2023-12-10-preview, 2025-03-31. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hardwaresecuritymodules [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CloudHsmClusterPrivateEndpointConnection_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudHsmClusterPrivateEndpointConnection = new AzureNative.HardwareSecurityModules.CloudHsmClusterPrivateEndpointConnection("cloudHsmClusterPrivateEndpointConnection", new()
///     {
///         CloudHsmClusterName = "chsm1",
///         PeConnectionName = "sample-pec",
///         PrivateLinkServiceConnectionState = new AzureNative.HardwareSecurityModules.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "My name is Joe and I'm approving this.",
///             Status = AzureNative.HardwareSecurityModules.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "rgcloudhsm",
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
/// 	hardwaresecuritymodules "github.com/pulumi/pulumi-azure-native-sdk/hardwaresecuritymodules/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hardwaresecuritymodules.NewCloudHsmClusterPrivateEndpointConnection(ctx, "cloudHsmClusterPrivateEndpointConnection", &hardwaresecuritymodules.CloudHsmClusterPrivateEndpointConnectionArgs{
/// 			CloudHsmClusterName: pulumi.String("chsm1"),
/// 			PeConnectionName:    pulumi.String("sample-pec"),
/// 			PrivateLinkServiceConnectionState: &hardwaresecuritymodules.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("My name is Joe and I'm approving this."),
/// 				Status:      pulumi.String(hardwaresecuritymodules.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgcloudhsm"),
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
/// import com.pulumi.azurenative.hardwaresecuritymodules.CloudHsmClusterPrivateEndpointConnection;
/// import com.pulumi.azurenative.hardwaresecuritymodules.CloudHsmClusterPrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.hardwaresecuritymodules.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var cloudHsmClusterPrivateEndpointConnection = new CloudHsmClusterPrivateEndpointConnection("cloudHsmClusterPrivateEndpointConnection", CloudHsmClusterPrivateEndpointConnectionArgs.builder()
///             .cloudHsmClusterName("chsm1")
///             .peConnectionName("sample-pec")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("My name is Joe and I'm approving this.")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("rgcloudhsm")
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
/// const cloudHsmClusterPrivateEndpointConnection = new azure_native.hardwaresecuritymodules.CloudHsmClusterPrivateEndpointConnection("cloudHsmClusterPrivateEndpointConnection", {
///     cloudHsmClusterName: "chsm1",
///     peConnectionName: "sample-pec",
///     privateLinkServiceConnectionState: {
///         description: "My name is Joe and I'm approving this.",
///         status: azure_native.hardwaresecuritymodules.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "rgcloudhsm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_hsm_cluster_private_endpoint_connection = azure_native.hardwaresecuritymodules.CloudHsmClusterPrivateEndpointConnection("cloudHsmClusterPrivateEndpointConnection",
///     cloud_hsm_cluster_name="chsm1",
///     pe_connection_name="sample-pec",
///     private_link_service_connection_state={
///         "description": "My name is Joe and I'm approving this.",
///         "status": azure_native.hardwaresecuritymodules.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="rgcloudhsm")
///
/// ```
///
/// ```yaml
/// resources:
///   cloudHsmClusterPrivateEndpointConnection:
///     type: azure-native:hardwaresecuritymodules:CloudHsmClusterPrivateEndpointConnection
///     properties:
///       cloudHsmClusterName: chsm1
///       peConnectionName: sample-pec
///       privateLinkServiceConnectionState:
///         description: My name is Joe and I'm approving this.
///         status: Approved
///       resourceGroupName: rgcloudhsm
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
/// $ pulumi import azure-native:hardwaresecuritymodules:CloudHsmClusterPrivateEndpointConnection sample-pec /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HardwareSecurityModules/cloudHsmClusters/{cloudHsmClusterName}/privateEndpointConnections/{peConnectionName}
/// ```
class CloudHsmClusterPrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Modified whenever there is a change in the state of private endpoint connection.
  late final pulumi.Output<String?> etag;
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

  /// Creates a new [CloudHsmClusterPrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudHsmClusterPrivateEndpointConnection]. {@macro pulumi_hardwaresecuritymodules_cloud_hsm_cluster_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudHsmClusterPrivateEndpointConnection(
    String name, {
    CloudHsmClusterPrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hardwaresecuritymodules:CloudHsmClusterPrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    groupIds = registerOutput<List<String>>('groupIds');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
