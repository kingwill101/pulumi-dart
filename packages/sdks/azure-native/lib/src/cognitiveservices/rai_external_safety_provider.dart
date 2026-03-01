import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_external_safety_provider_args.dart';
import 'rai_external_safety_provider_schema_properties_response.dart';
import 'system_data_response.dart';

/// Cognitive Services Rai External Safety provider Schema.
///
/// Uses Azure REST API version 2025-10-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutRaiExternalSafetyProvider
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var raiExternalSafetyProvider = new AzureNative.CognitiveServices.RaiExternalSafetyProvider("raiExternalSafetyProvider", new()
///     {
///         Properties = new AzureNative.CognitiveServices.Inputs.RaiExternalSafetyProviderSchemaPropertiesArgs
///         {
///             KeyVaultUri = "https://example.vault.azure.net",
///             ManagedIdentity = "00000000-0000-0000-0000-000000000000",
///             Mode = "sync",
///             ProviderId = "00000000-0000-0000-0000-000000000000",
///             ProviderName = "safetyProviderName",
///             SecretName = "mySecretName",
///             Url = "https://example.webhook.endpoint",
///         },
///         SafetyProviderName = "safetyProviderName",
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
/// 		_, err := cognitiveservices.NewRaiExternalSafetyProvider(ctx, "raiExternalSafetyProvider", &cognitiveservices.RaiExternalSafetyProviderArgs{
/// 			Properties: &cognitiveservices.RaiExternalSafetyProviderSchemaPropertiesArgs{
/// 				KeyVaultUri:     pulumi.String("https://example.vault.azure.net"),
/// 				ManagedIdentity: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 				Mode:            pulumi.String("sync"),
/// 				ProviderId:      pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 				ProviderName:    pulumi.String("safetyProviderName"),
/// 				SecretName:      pulumi.String("mySecretName"),
/// 				Url:             pulumi.String("https://example.webhook.endpoint"),
/// 			},
/// 			SafetyProviderName: pulumi.String("safetyProviderName"),
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
/// import com.pulumi.azurenative.cognitiveservices.RaiExternalSafetyProvider;
/// import com.pulumi.azurenative.cognitiveservices.RaiExternalSafetyProviderArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.RaiExternalSafetyProviderSchemaPropertiesArgs;
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
///         var raiExternalSafetyProvider = new RaiExternalSafetyProvider("raiExternalSafetyProvider", RaiExternalSafetyProviderArgs.builder()
///             .properties(RaiExternalSafetyProviderSchemaPropertiesArgs.builder()
///                 .keyVaultUri("https://example.vault.azure.net")
///                 .managedIdentity("00000000-0000-0000-0000-000000000000")
///                 .mode("sync")
///                 .providerId("00000000-0000-0000-0000-000000000000")
///                 .providerName("safetyProviderName")
///                 .secretName("mySecretName")
///                 .url("https://example.webhook.endpoint")
///                 .build())
///             .safetyProviderName("safetyProviderName")
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
/// const raiExternalSafetyProvider = new azure_native.cognitiveservices.RaiExternalSafetyProvider("raiExternalSafetyProvider", {
///     properties: {
///         keyVaultUri: "https://example.vault.azure.net",
///         managedIdentity: "00000000-0000-0000-0000-000000000000",
///         mode: "sync",
///         providerId: "00000000-0000-0000-0000-000000000000",
///         providerName: "safetyProviderName",
///         secretName: "mySecretName",
///         url: "https://example.webhook.endpoint",
///     },
///     safetyProviderName: "safetyProviderName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rai_external_safety_provider = azure_native.cognitiveservices.RaiExternalSafetyProvider("raiExternalSafetyProvider",
///     properties={
///         "key_vault_uri": "https://example.vault.azure.net",
///         "managed_identity": "00000000-0000-0000-0000-000000000000",
///         "mode": "sync",
///         "provider_id": "00000000-0000-0000-0000-000000000000",
///         "provider_name": "safetyProviderName",
///         "secret_name": "mySecretName",
///         "url": "https://example.webhook.endpoint",
///     },
///     safety_provider_name="safetyProviderName")
///
/// ```
///
/// ```yaml
/// resources:
///   raiExternalSafetyProvider:
///     type: azure-native:cognitiveservices:RaiExternalSafetyProvider
///     properties:
///       properties:
///         keyVaultUri: https://example.vault.azure.net
///         managedIdentity: 00000000-0000-0000-0000-000000000000
///         mode: sync
///         providerId: 00000000-0000-0000-0000-000000000000
///         providerName: safetyProviderName
///         secretName: mySecretName
///         url: https://example.webhook.endpoint
///       safetyProviderName: safetyProviderName
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
/// $ pulumi import azure-native:cognitiveservices:RaiExternalSafetyProvider safetyProviderName /subscriptions/{subscriptionId}/providers/Microsoft.CognitiveServices/raiExternalSafetyProviders/{safetyProviderName}
/// ```
class RaiExternalSafetyProvider extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Etag.
  late final pulumi.Output<String> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of Cognitive Services Rai External Safety provider.
  late final pulumi.Output<RaiExternalSafetyProviderSchemaPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RaiExternalSafetyProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RaiExternalSafetyProvider]. {@macro pulumi_cognitiveservices_rai_external_safety_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RaiExternalSafetyProvider(
    String name, {
    RaiExternalSafetyProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cognitiveservices:RaiExternalSafetyProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<RaiExternalSafetyProviderSchemaPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
