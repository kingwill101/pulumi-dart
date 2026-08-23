import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_scope_args.dart';
import 'encryption_scope_properties_response.dart';
import 'system_data_response.dart';

/// Cognitive Services EncryptionScope
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutEncryptionScope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var encryptionScope = new AzureNative.CognitiveServices.EncryptionScope("encryptionScope", new()
///     {
///         AccountName = "accountName",
///         EncryptionScopeName = "encryptionScopeName",
///         Properties = new AzureNative.CognitiveServices.Inputs.EncryptionScopePropertiesArgs
///         {
///             KeySource = AzureNative.CognitiveServices.KeySource.Microsoft_KeyVault,
///             KeyVaultProperties = new AzureNative.CognitiveServices.Inputs.KeyVaultPropertiesArgs
///             {
///                 IdentityClientId = "00000000-0000-0000-0000-000000000000",
///                 KeyName = "DevKeyWestUS2",
///                 KeyVaultUri = "https://devkvwestus2.vault.azure.net/",
///                 KeyVersion = "9f85549d7bf14ff4bf178c10d3bdca95",
///             },
///             State = AzureNative.CognitiveServices.EncryptionScopeState.Enabled,
///         },
///         ResourceGroupName = "resourceGroupName",
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewEncryptionScope(ctx, "encryptionScope", &cognitiveservices.EncryptionScopeArgs{
/// 			AccountName:         pulumi.String("accountName"),
/// 			EncryptionScopeName: pulumi.String("encryptionScopeName"),
/// 			Properties: &cognitiveservices.EncryptionScopePropertiesArgs{
/// 				KeySource: pulumi.String(cognitiveservices.KeySource_Microsoft_KeyVault),
/// 				KeyVaultProperties: &cognitiveservices.KeyVaultPropertiesArgs{
/// 					IdentityClientId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 					KeyName:          pulumi.String("DevKeyWestUS2"),
/// 					KeyVaultUri:      pulumi.String("https://devkvwestus2.vault.azure.net/"),
/// 					KeyVersion:       pulumi.String("9f85549d7bf14ff4bf178c10d3bdca95"),
/// 				},
/// 				State: pulumi.String(cognitiveservices.EncryptionScopeStateEnabled),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
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
/// resource "azure-native_cognitiveservices_encryptionscope" "encryptionScope" {
///   account_name          = "accountName"
///   encryption_scope_name = "encryptionScopeName"
///   properties = {
///     key_source = "Microsoft.KeyVault"
///     key_vault_properties = {
///       identity_client_id = "00000000-0000-0000-0000-000000000000"
///       key_name           = "DevKeyWestUS2"
///       key_vault_uri      = "https://devkvwestus2.vault.azure.net/"
///       key_version        = "9f85549d7bf14ff4bf178c10d3bdca95"
///     }
///     state = "Enabled"
///   }
///   resource_group_name = "resourceGroupName"
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
/// import com.pulumi.azurenative.cognitiveservices.EncryptionScope;
/// import com.pulumi.azurenative.cognitiveservices.EncryptionScopeArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.EncryptionScopePropertiesArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.KeyVaultPropertiesArgs;
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
///         var encryptionScope = new EncryptionScope("encryptionScope", EncryptionScopeArgs.builder()
///             .accountName("accountName")
///             .encryptionScopeName("encryptionScopeName")
///             .properties(EncryptionScopePropertiesArgs.builder()
///                 .keySource("Microsoft.KeyVault")
///                 .keyVaultProperties(KeyVaultPropertiesArgs.builder()
///                     .identityClientId("00000000-0000-0000-0000-000000000000")
///                     .keyName("DevKeyWestUS2")
///                     .keyVaultUri("https://devkvwestus2.vault.azure.net/")
///                     .keyVersion("9f85549d7bf14ff4bf178c10d3bdca95")
///                     .build())
///                 .state("Enabled")
///                 .build())
///             .resourceGroupName("resourceGroupName")
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
/// const encryptionScope = new azure_native.cognitiveservices.EncryptionScope("encryptionScope", {
///     accountName: "accountName",
///     encryptionScopeName: "encryptionScopeName",
///     properties: {
///         keySource: azure_native.cognitiveservices.KeySource.Microsoft_KeyVault,
///         keyVaultProperties: {
///             identityClientId: "00000000-0000-0000-0000-000000000000",
///             keyName: "DevKeyWestUS2",
///             keyVaultUri: "https://devkvwestus2.vault.azure.net/",
///             keyVersion: "9f85549d7bf14ff4bf178c10d3bdca95",
///         },
///         state: azure_native.cognitiveservices.EncryptionScopeState.Enabled,
///     },
///     resourceGroupName: "resourceGroupName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// encryption_scope = azure_native.cognitiveservices.EncryptionScope("encryptionScope",
///     account_name="accountName",
///     encryption_scope_name="encryptionScopeName",
///     properties={
///         "key_source": azure_native.cognitiveservices.KeySource.MICROSOFT_KEY_VAULT,
///         "key_vault_properties": {
///             "identity_client_id": "00000000-0000-0000-0000-000000000000",
///             "key_name": "DevKeyWestUS2",
///             "key_vault_uri": "https://devkvwestus2.vault.azure.net/",
///             "key_version": "9f85549d7bf14ff4bf178c10d3bdca95",
///         },
///         "state": azure_native.cognitiveservices.EncryptionScopeState.ENABLED,
///     },
///     resource_group_name="resourceGroupName")
///
/// ```
///
/// ```yaml
/// resources:
///   encryptionScope:
///     type: azure-native:cognitiveservices:EncryptionScope
///     properties:
///       accountName: accountName
///       encryptionScopeName: encryptionScopeName
///       properties:
///         keySource: Microsoft.KeyVault
///         keyVaultProperties:
///           identityClientId: 00000000-0000-0000-0000-000000000000
///           keyName: DevKeyWestUS2
///           keyVaultUri: https://devkvwestus2.vault.azure.net/
///           keyVersion: 9f85549d7bf14ff4bf178c10d3bdca95
///         state: Enabled
///       resourceGroupName: resourceGroupName
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
/// $ pulumi import azure-native:cognitiveservices:EncryptionScope encryptionScopeName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/encryptionScopes/{encryptionScopeName}
/// ```
class EncryptionScope extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Etag.
  late final pulumi.Output<String> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of Cognitive Services EncryptionScope.
  late final pulumi.Output<EncryptionScopePropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EncryptionScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EncryptionScope]. {@macro pulumi_cognitiveservices_encryption_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EncryptionScope(
    String name, {
    EncryptionScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cognitiveservices:EncryptionScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EncryptionScopePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionScopePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
