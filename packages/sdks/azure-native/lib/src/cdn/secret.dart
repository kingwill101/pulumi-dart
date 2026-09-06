import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_args.dart';
import 'system_data_response.dart';

/// Friendly Secret name mapping to the any Secret or secret related information.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Secrets_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret = new AzureNative.Cdn.Secret("secret", new()
///     {
///         Parameters = new AzureNative.Cdn.Inputs.CustomerCertificateParametersArgs
///         {
///             SecretSource = new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.KeyVault/vault/kvName/secrets/certificatename",
///             },
///             SecretVersion = "abcdef1234578900abcdef1234567890",
///             Type = "CustomerCertificate",
///             UseLatestVersion = false,
///         },
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
///         SecretName = "secret1",
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewSecret(ctx, "secret", &cdn.SecretArgs{
/// 			Parameters: &cdn.CustomerCertificateParametersArgs{
/// 				SecretSource: &cdn.ResourceReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.KeyVault/vault/kvName/secrets/certificatename"),
/// 				},
/// 				SecretVersion:    pulumi.String("abcdef1234578900abcdef1234567890"),
/// 				Type:             pulumi.String("CustomerCertificate"),
/// 				UseLatestVersion: pulumi.Bool(false),
/// 			},
/// 			ProfileName:       pulumi.String("profile1"),
/// 			ResourceGroupName: pulumi.String("RG"),
/// 			SecretName:        pulumi.String("secret1"),
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
/// resource "azure-native_cdn_secret" "secret" {
///   parameters = {
///     "secretSource" = {
///       "id" = "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.KeyVault/vault/kvName/secrets/certificatename"
///     }
///     "secretVersion"    = "abcdef1234578900abcdef1234567890"
///     "type"             = "CustomerCertificate"
///     "useLatestVersion" = false
///   }
///   profile_name        = "profile1"
///   resource_group_name = "RG"
///   secret_name         = "secret1"
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
/// import com.pulumi.azurenative.cdn.Secret;
/// import com.pulumi.azurenative.cdn.SecretArgs;
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
///         var secret = new Secret("secret", SecretArgs.builder()
///             .parameters(CustomerCertificateParametersArgs.builder()
///                 .secretSource(ResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.KeyVault/vault/kvName/secrets/certificatename")
///                     .build())
///                 .secretVersion("abcdef1234578900abcdef1234567890")
///                 .type("CustomerCertificate")
///                 .useLatestVersion(false)
///                 .build())
///             .profileName("profile1")
///             .resourceGroupName("RG")
///             .secretName("secret1")
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
/// const secret = new azure_native.cdn.Secret("secret", {
///     parameters: {
///         secretSource: {
///             id: "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.KeyVault/vault/kvName/secrets/certificatename",
///         },
///         secretVersion: "abcdef1234578900abcdef1234567890",
///         type: "CustomerCertificate",
///         useLatestVersion: false,
///     },
///     profileName: "profile1",
///     resourceGroupName: "RG",
///     secretName: "secret1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// secret = azure_native.cdn.Secret("secret",
///     parameters={
///         "secret_source": {
///             "id": "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.KeyVault/vault/kvName/secrets/certificatename",
///         },
///         "secret_version": "abcdef1234578900abcdef1234567890",
///         "type": "CustomerCertificate",
///         "use_latest_version": False,
///     },
///     profile_name="profile1",
///     resource_group_name="RG",
///     secret_name="secret1")
///
/// ```
///
/// ```yaml
/// resources:
///   secret:
///     type: azure-native:cdn:Secret
///     properties:
///       parameters:
///         secretSource:
///           id: /subscriptions/subid/resourcegroups/RG/providers/Microsoft.KeyVault/vault/kvName/secrets/certificatename
///         secretVersion: abcdef1234578900abcdef1234567890
///         type: CustomerCertificate
///         useLatestVersion: false
///       profileName: profile1
///       resourceGroupName: RG
///       secretName: secret1
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
/// $ pulumi import azure-native:cdn:Secret secret1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/secrets/{secretName}
/// ```
class Secret extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String> deploymentStatus;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// object which contains secret parameters
  late final pulumi.Output<dynamic> parameters;
  /// The name of the profile which holds the secret.
  late final pulumi.Output<String> profileName;
  /// Provisioning status
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Secret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Secret]. {@macro pulumi_cdn_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Secret(
    String name, {
    SecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:Secret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deploymentStatus = registerOutput<String>('deploymentStatus');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<dynamic>('parameters');
    profileName = registerOutput<String>('profileName');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Secret] resource.
  Secret.reference(String urn)
    : super(
        'azure-native:cdn:Secret',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deploymentStatus = registerOutput<String>('deploymentStatus');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<dynamic>('parameters');
    profileName = registerOutput<String>('profileName');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
