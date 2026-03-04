import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_args.dart';
import 'secret_properties_response.dart';

/// Resource information with extended details.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-07-01, 2024-04-01-preview, 2024-12-01-preview, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native keyvault [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a secret
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret = new AzureNative.KeyVault.Secret("secret", new()
///     {
///         Properties = new AzureNative.KeyVault.Inputs.SecretPropertiesArgs
///         {
///             Value = "secret-value",
///         },
///         ResourceGroupName = "sample-group",
///         SecretName = "secret-name",
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
/// 		_, err := keyvault.NewSecret(ctx, "secret", &keyvault.SecretArgs{
/// 			Properties: &keyvault.SecretPropertiesArgs{
/// 				Value: pulumi.String("secret-value"),
/// 			},
/// 			ResourceGroupName: pulumi.String("sample-group"),
/// 			SecretName:        pulumi.String("secret-name"),
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
/// import com.pulumi.azurenative.keyvault.Secret;
/// import com.pulumi.azurenative.keyvault.SecretArgs;
/// import com.pulumi.azurenative.keyvault.inputs.SecretPropertiesArgs;
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
///         var secret = new Secret("secret", SecretArgs.builder()
///             .properties(SecretPropertiesArgs.builder()
///                 .value("secret-value")
///                 .build())
///             .resourceGroupName("sample-group")
///             .secretName("secret-name")
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
/// const secret = new azure_native.keyvault.Secret("secret", {
///     properties: {
///         value: "secret-value",
///     },
///     resourceGroupName: "sample-group",
///     secretName: "secret-name",
///     vaultName: "sample-vault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// secret = azure_native.keyvault.Secret("secret",
///     properties={
///         "value": "secret-value",
///     },
///     resource_group_name="sample-group",
///     secret_name="secret-name",
///     vault_name="sample-vault")
///
/// ```
///
/// ```yaml
/// resources:
///   secret:
///     type: azure-native:keyvault:Secret
///     properties:
///       properties:
///         value: secret-value
///       resourceGroupName: sample-group
///       secretName: secret-name
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
/// $ pulumi import azure-native:keyvault:Secret secret-name /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/secrets/{secretName}
/// ```
class Secret extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Azure location of the key vault resource.
  late final pulumi.Output<String> location;

  /// Name of the key vault resource.
  late final pulumi.Output<String> name;

  /// Properties of the secret
  late final pulumi.Output<SecretPropertiesResponse> properties;

  /// Tags assigned to the key vault resource.
  late final pulumi.Output<Map<String, String>> tags;

  /// Resource type of the key vault resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Secret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Secret]. {@macro pulumi_keyvault_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Secret(String name, {SecretArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:keyvault:Secret',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SecretPropertiesResponse>('properties');
    tags = registerOutput<Map<String, String>>('tags');
    type = registerOutput<String>('type');
  }
}
