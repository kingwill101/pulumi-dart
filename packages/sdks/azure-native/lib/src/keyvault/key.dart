import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_args.dart';
import 'key_attributes_response.dart';
import 'key_release_policy_response.dart';
import 'rotation_policy_response.dart';

/// The key resource.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-07-01, 2024-04-01-preview, 2024-12-01-preview, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native keyvault [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a key
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var key = new AzureNative.KeyVault.Key("key", new()
///     {
///         KeyName = "sample-key-name",
///         Properties = new AzureNative.KeyVault.Inputs.KeyPropertiesArgs
///         {
///             Kty = AzureNative.KeyVault.JsonWebKeyType.RSA,
///         },
///         ResourceGroupName = "sample-group",
///         VaultName = "sample-vault-name",
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
/// 		_, err := keyvault.NewKey(ctx, "key", &keyvault.KeyArgs{
/// 			KeyName: pulumi.String("sample-key-name"),
/// 			Properties: &keyvault.KeyPropertiesArgs{
/// 				Kty: pulumi.String(keyvault.JsonWebKeyTypeRSA),
/// 			},
/// 			ResourceGroupName: pulumi.String("sample-group"),
/// 			VaultName:         pulumi.String("sample-vault-name"),
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
/// import com.pulumi.azurenative.keyvault.Key;
/// import com.pulumi.azurenative.keyvault.KeyArgs;
/// import com.pulumi.azurenative.keyvault.inputs.KeyPropertiesArgs;
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
///         var key = new Key("key", KeyArgs.builder()
///             .keyName("sample-key-name")
///             .properties(KeyPropertiesArgs.builder()
///                 .kty("RSA")
///                 .build())
///             .resourceGroupName("sample-group")
///             .vaultName("sample-vault-name")
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
/// const key = new azure_native.keyvault.Key("key", {
///     keyName: "sample-key-name",
///     properties: {
///         kty: azure_native.keyvault.JsonWebKeyType.RSA,
///     },
///     resourceGroupName: "sample-group",
///     vaultName: "sample-vault-name",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// key = azure_native.keyvault.Key("key",
///     key_name="sample-key-name",
///     properties={
///         "kty": azure_native.keyvault.JsonWebKeyType.RSA,
///     },
///     resource_group_name="sample-group",
///     vault_name="sample-vault-name")
///
/// ```
///
/// ```yaml
/// resources:
///   key:
///     type: azure-native:keyvault:Key
///     properties:
///       keyName: sample-key-name
///       properties:
///         kty: RSA
///       resourceGroupName: sample-group
///       vaultName: sample-vault-name
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
/// $ pulumi import azure-native:keyvault:Key sample-key-name /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/keys/{keyName}
/// ```
class Key extends pulumi.CustomResource {
  /// The attributes of the key.
  late final pulumi.Output<KeyAttributesResponse?> attributes;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The elliptic curve name. For valid values, see JsonWebKeyCurveName. Default for EC and EC-HSM keys is P-256
  late final pulumi.Output<String?> curveName;
  late final pulumi.Output<List<String>?> keyOps;
  /// The key size in bits. For example: 2048, 3072, or 4096 for RSA. Default for RSA and RSA-HSM keys is 2048. Exception made for bring your own key (BYOK), key exchange keys default to 4096.
  late final pulumi.Output<int?> keySize;
  /// The URI to retrieve the current version of the key.
  late final pulumi.Output<String> keyUri;
  /// The URI to retrieve the specific version of the key.
  late final pulumi.Output<String> keyUriWithVersion;
  /// The type of the key. For valid values, see JsonWebKeyType.
  late final pulumi.Output<String?> kty;
  /// Azure location of the key vault resource.
  late final pulumi.Output<String> location;
  /// Name of the key vault resource.
  late final pulumi.Output<String> name;
  /// Key release policy in response. It will be used for both output and input. Omitted if empty
  late final pulumi.Output<KeyReleasePolicyResponse?> releasePolicy;
  /// Key rotation policy in response. It will be used for both output and input. Omitted if empty
  late final pulumi.Output<RotationPolicyResponse?> rotationPolicy;
  /// Tags assigned to the key vault resource.
  late final pulumi.Output<Map<String, String>> tags;
  /// Resource type of the key vault resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Key].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Key]. {@macro pulumi_keyvault_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Key(
    String name, {
    KeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:keyvault:Key',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attributes = registerOutput<KeyAttributesResponse?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyAttributesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    curveName = registerOutput<String?>('curveName');
    keyOps = registerOutput<List<String>?>('keyOps');
    keySize = registerOutput<int?>('keySize');
    keyUri = registerOutput<String>('keyUri');
    keyUriWithVersion = registerOutput<String>('keyUriWithVersion');
    kty = registerOutput<String?>('kty');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    releasePolicy = registerOutput<KeyReleasePolicyResponse?>('releasePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyReleasePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rotationPolicy = registerOutput<RotationPolicyResponse?>('rotationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RotationPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>>('tags');
    type = registerOutput<String>('type');
  }
}
