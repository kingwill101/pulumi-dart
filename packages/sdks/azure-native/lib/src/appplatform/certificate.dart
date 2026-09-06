import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'system_data_response.dart';

/// Certificate resource payload.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Certificates_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificate = new AzureNative.AppPlatform.Certificate("certificate", new()
///     {
///         CertificateName = "mycertificate",
///         Properties = new AzureNative.AppPlatform.Inputs.KeyVaultCertificatePropertiesArgs
///         {
///             AutoSync = AzureNative.AppPlatform.KeyVaultCertificateAutoSync.Enabled,
///             CertVersion = "08a219d06d874795a96db47e06fbb01e",
///             KeyVaultCertName = "mycert",
///             Type = "KeyVaultCertificate",
///             VaultUri = "https://myvault.vault.azure.net",
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
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
/// 	appplatform "github.com/pulumi/pulumi-azure-native-sdk/appplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appplatform.NewCertificate(ctx, "certificate", &appplatform.CertificateArgs{
/// 			CertificateName: pulumi.String("mycertificate"),
/// 			Properties: &appplatform.KeyVaultCertificatePropertiesArgs{
/// 				AutoSync:         pulumi.String(appplatform.KeyVaultCertificateAutoSyncEnabled),
/// 				CertVersion:      pulumi.String("08a219d06d874795a96db47e06fbb01e"),
/// 				KeyVaultCertName: pulumi.String("mycert"),
/// 				Type:             pulumi.String("KeyVaultCertificate"),
/// 				VaultUri:         pulumi.String("https://myvault.vault.azure.net"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
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
/// resource "azure-native_appplatform_certificate" "certificate" {
///   certificate_name = "mycertificate"
///   properties = {
///     "autoSync"         = "Enabled"
///     "certVersion"      = "08a219d06d874795a96db47e06fbb01e"
///     "keyVaultCertName" = "mycert"
///     "type"             = "KeyVaultCertificate"
///     "vaultUri"         = "https://myvault.vault.azure.net"
///   }
///   resource_group_name = "myResourceGroup"
///   service_name        = "myservice"
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
/// import com.pulumi.azurenative.appplatform.Certificate;
/// import com.pulumi.azurenative.appplatform.CertificateArgs;
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
///         var certificate = new Certificate("certificate", CertificateArgs.builder()
///             .certificateName("mycertificate")
///             .properties(KeyVaultCertificatePropertiesArgs.builder()
///                 .autoSync("Enabled")
///                 .certVersion("08a219d06d874795a96db47e06fbb01e")
///                 .keyVaultCertName("mycert")
///                 .type("KeyVaultCertificate")
///                 .vaultUri("https://myvault.vault.azure.net")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
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
/// const certificate = new azure_native.appplatform.Certificate("certificate", {
///     certificateName: "mycertificate",
///     properties: {
///         autoSync: azure_native.appplatform.KeyVaultCertificateAutoSync.Enabled,
///         certVersion: "08a219d06d874795a96db47e06fbb01e",
///         keyVaultCertName: "mycert",
///         type: "KeyVaultCertificate",
///         vaultUri: "https://myvault.vault.azure.net",
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// certificate = azure_native.appplatform.Certificate("certificate",
///     certificate_name="mycertificate",
///     properties={
///         "auto_sync": azure_native.appplatform.KeyVaultCertificateAutoSync.ENABLED,
///         "cert_version": "08a219d06d874795a96db47e06fbb01e",
///         "key_vault_cert_name": "mycert",
///         "type": "KeyVaultCertificate",
///         "vault_uri": "https://myvault.vault.azure.net",
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   certificate:
///     type: azure-native:appplatform:Certificate
///     properties:
///       certificateName: mycertificate
///       properties:
///         autoSync: Enabled
///         certVersion: 08a219d06d874795a96db47e06fbb01e
///         keyVaultCertName: mycert
///         type: KeyVaultCertificate
///         vaultUri: https://myvault.vault.azure.net
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
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
/// $ pulumi import azure-native:appplatform:Certificate mycertificate /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/certificates/{certificateName}
/// ```
class Certificate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Properties of the certificate resource payload.
  late final pulumi.Output<dynamic> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_appplatform_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Certificate] resource.
  Certificate.reference(String urn)
    : super(
        'azure-native:appplatform:Certificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
