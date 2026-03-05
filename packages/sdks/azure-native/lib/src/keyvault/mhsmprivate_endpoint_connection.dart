import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hsm_sku_response.dart';
import 'managed_service_identity_response.dart';
import 'mhsmprivate_endpoint_connection_args.dart';
import 'mhsmprivate_endpoint_response.dart';
import 'mhsmprivate_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// Private endpoint connection resource.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-07-01, 2024-04-01-preview, 2024-12-01-preview, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native keyvault [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ManagedHsmPutPrivateEndpointConnection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mhsmPrivateEndpointConnection = new AzureNative.KeyVault.MHSMPrivateEndpointConnection("mhsmPrivateEndpointConnection", new()
///     {
///         Name = "sample-mhsm",
///         PrivateEndpointConnectionName = "sample-pec",
///         PrivateLinkServiceConnectionState = new AzureNative.KeyVault.Inputs.MHSMPrivateLinkServiceConnectionStateArgs
///         {
///             Description = "My name is Joe and I'm approving this.",
///             Status = AzureNative.KeyVault.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "sample-group",
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
/// 	keyvault "github.com/pulumi/pulumi-azure-native-sdk/keyvault/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := keyvault.NewMHSMPrivateEndpointConnection(ctx, "mhsmPrivateEndpointConnection", &keyvault.MHSMPrivateEndpointConnectionArgs{
/// 			Name:                          pulumi.String("sample-mhsm"),
/// 			PrivateEndpointConnectionName: pulumi.String("sample-pec"),
/// 			PrivateLinkServiceConnectionState: &keyvault.MHSMPrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("My name is Joe and I'm approving this."),
/// 				Status:      pulumi.String(keyvault.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("sample-group"),
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
/// import com.pulumi.azurenative.keyvault.MHSMPrivateEndpointConnection;
/// import com.pulumi.azurenative.keyvault.MHSMPrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.keyvault.inputs.MHSMPrivateLinkServiceConnectionStateArgs;
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
///         var mhsmPrivateEndpointConnection = new MHSMPrivateEndpointConnection("mhsmPrivateEndpointConnection", MHSMPrivateEndpointConnectionArgs.builder()
///             .name("sample-mhsm")
///             .privateEndpointConnectionName("sample-pec")
///             .privateLinkServiceConnectionState(MHSMPrivateLinkServiceConnectionStateArgs.builder()
///                 .description("My name is Joe and I'm approving this.")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("sample-group")
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
/// const mhsmPrivateEndpointConnection = new azure_native.keyvault.MHSMPrivateEndpointConnection("mhsmPrivateEndpointConnection", {
///     name: "sample-mhsm",
///     privateEndpointConnectionName: "sample-pec",
///     privateLinkServiceConnectionState: {
///         description: "My name is Joe and I'm approving this.",
///         status: azure_native.keyvault.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "sample-group",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mhsm_private_endpoint_connection = azure_native.keyvault.MHSMPrivateEndpointConnection("mhsmPrivateEndpointConnection",
///     name="sample-mhsm",
///     private_endpoint_connection_name="sample-pec",
///     private_link_service_connection_state={
///         "description": "My name is Joe and I'm approving this.",
///         "status": azure_native.keyvault.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="sample-group")
///
/// ```
///
/// ```yaml
/// resources:
///   mhsmPrivateEndpointConnection:
///     type: azure-native:keyvault:MHSMPrivateEndpointConnection
///     properties:
///       name: sample-mhsm
///       privateEndpointConnectionName: sample-pec
///       privateLinkServiceConnectionState:
///         description: My name is Joe and I'm approving this.
///         status: Approved
///       resourceGroupName: sample-group
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
/// $ pulumi import azure-native:keyvault:MHSMPrivateEndpointConnection sample-pec /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class MHSMPrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Modified whenever there is a change in the state of private endpoint connection.
  late final pulumi.Output<String?> etag;
  /// Managed service identity (system assigned and/or user assigned identities)
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The supported Azure location where the managed HSM Pool should be created.
  late final pulumi.Output<String?> location;
  /// The name of the managed HSM Pool.
  late final pulumi.Output<String> name;
  /// Properties of the private endpoint object.
  late final pulumi.Output<MHSMPrivateEndpointResponse?> privateEndpoint;
  /// Approval state of the private link connection.
  late final pulumi.Output<MHSMPrivateLinkServiceConnectionStateResponse?> privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint connection.
  late final pulumi.Output<String> provisioningState;
  /// SKU details
  late final pulumi.Output<ManagedHsmSkuResponse?> sku;
  /// Metadata pertaining to creation and last modification of the key vault resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// The resource type of the managed HSM Pool.
  late final pulumi.Output<String> type;

  /// Creates a new [MHSMPrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MHSMPrivateEndpointConnection]. {@macro pulumi_keyvault_mhsmprivate_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MHSMPrivateEndpointConnection(
    String name, {
    MHSMPrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:keyvault:MHSMPrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<MHSMPrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MHSMPrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<MHSMPrivateLinkServiceConnectionStateResponse?>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MHSMPrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<ManagedHsmSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedHsmSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
