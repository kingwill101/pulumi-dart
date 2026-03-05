import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Private endpoint connection resource.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-07-01, 2024-04-01-preview, 2024-12-01-preview, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native keyvault [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KeyVaultPutPrivateEndpointConnection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.KeyVault.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "sample-pec",
///         PrivateLinkServiceConnectionState = new AzureNative.KeyVault.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "My name is Joe and I'm approving this.",
///             Status = AzureNative.KeyVault.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "sample-group",
///         VaultName = "sample-vault",
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
/// 		_, err := keyvault.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &keyvault.PrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("sample-pec"),
/// 			PrivateLinkServiceConnectionState: &keyvault.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("My name is Joe and I'm approving this."),
/// 				Status:      pulumi.String(keyvault.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("sample-group"),
/// 			VaultName:         pulumi.String("sample-vault"),
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
/// import com.pulumi.azurenative.keyvault.PrivateEndpointConnection;
/// import com.pulumi.azurenative.keyvault.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.keyvault.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .privateEndpointConnectionName("sample-pec")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("My name is Joe and I'm approving this.")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("sample-group")
///             .vaultName("sample-vault")
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
/// const privateEndpointConnection = new azure_native.keyvault.PrivateEndpointConnection("privateEndpointConnection", {
///     privateEndpointConnectionName: "sample-pec",
///     privateLinkServiceConnectionState: {
///         description: "My name is Joe and I'm approving this.",
///         status: azure_native.keyvault.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "sample-group",
///     vaultName: "sample-vault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.keyvault.PrivateEndpointConnection("privateEndpointConnection",
///     private_endpoint_connection_name="sample-pec",
///     private_link_service_connection_state={
///         "description": "My name is Joe and I'm approving this.",
///         "status": azure_native.keyvault.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="sample-group",
///     vault_name="sample-vault")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:keyvault:PrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: sample-pec
///       privateLinkServiceConnectionState:
///         description: My name is Joe and I'm approving this.
///         status: Approved
///       resourceGroupName: sample-group
///       vaultName: sample-vault
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
/// $ pulumi import azure-native:keyvault:PrivateEndpointConnection sample-pec /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Modified whenever there is a change in the state of private endpoint connection.
  late final pulumi.Output<String?> etag;

  /// Azure location of the key vault resource.
  late final pulumi.Output<String> location;

  /// Name of the key vault resource.
  late final pulumi.Output<String> name;

  /// Properties of the private endpoint object.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;

  /// Approval state of the private link connection.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse?>
  privateLinkServiceConnectionState;

  /// Provisioning state of the private endpoint connection.
  late final pulumi.Output<String> provisioningState;

  /// Tags assigned to the key vault resource.
  late final pulumi.Output<Map<String, String>> tags;

  /// Resource type of the key vault resource.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_keyvault_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:keyvault:PrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    location = registerOutput<String>('location');
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
        registerOutput<PrivateLinkServiceConnectionStateResponse?>(
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
    tags = registerOutput<Map<String, String>>('tags');
    type = registerOutput<String>('type');
  }
}
