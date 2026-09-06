import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_response_properties.dart';
import 'system_data_response.dart';

/// Certificate used for Custom Domain bindings of Container Apps in a Managed Environment
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Certificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificate = new AzureNative.App.Certificate("certificate", new()
///     {
///         CertificateName = "certificate-firendly-name",
///         EnvironmentName = "testcontainerenv",
///         Location = "East US",
///         Properties = new AzureNative.App.Inputs.CertificatePropertiesArgs
///         {
///             CertificateType = AzureNative.App.CertificateType.ImagePullTrustedCA,
///             Password = "private key password",
///             Value = "Y2VydA==",
///         },
///         ResourceGroupName = "examplerg",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewCertificate(ctx, "certificate", &app.CertificateArgs{
/// 			CertificateName: pulumi.String("certificate-firendly-name"),
/// 			EnvironmentName: pulumi.String("testcontainerenv"),
/// 			Location:        pulumi.String("East US"),
/// 			Properties: &app.CertificatePropertiesArgs{
/// 				CertificateType: pulumi.String(app.CertificateTypeImagePullTrustedCA),
/// 				Password:        pulumi.String("private key password"),
/// 				Value:           pulumi.String("Y2VydA=="),
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// resource "azure-native_app_certificate" "certificate" {
///   certificate_name = "certificate-firendly-name"
///   environment_name = "testcontainerenv"
///   location         = "East US"
///   properties = {
///     certificate_type = "ImagePullTrustedCA"
///     password         = "private key password"
///     value            = "Y2VydA=="
///   }
///   resource_group_name = "examplerg"
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
/// import com.pulumi.azurenative.app.Certificate;
/// import com.pulumi.azurenative.app.CertificateArgs;
/// import com.pulumi.azurenative.app.inputs.CertificatePropertiesArgs;
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
///             .certificateName("certificate-firendly-name")
///             .environmentName("testcontainerenv")
///             .location("East US")
///             .properties(CertificatePropertiesArgs.builder()
///                 .certificateType("ImagePullTrustedCA")
///                 .password("private key password")
///                 .value("Y2VydA==")
///                 .build())
///             .resourceGroupName("examplerg")
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
/// const certificate = new azure_native.app.Certificate("certificate", {
///     certificateName: "certificate-firendly-name",
///     environmentName: "testcontainerenv",
///     location: "East US",
///     properties: {
///         certificateType: azure_native.app.CertificateType.ImagePullTrustedCA,
///         password: "private key password",
///         value: "Y2VydA==",
///     },
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// certificate = azure_native.app.Certificate("certificate",
///     certificate_name="certificate-firendly-name",
///     environment_name="testcontainerenv",
///     location="East US",
///     properties={
///         "certificate_type": azure_native.app.CertificateType.IMAGE_PULL_TRUSTED_CA,
///         "password": "private key password",
///         "value": "Y2VydA==",
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   certificate:
///     type: azure-native:app:Certificate
///     properties:
///       certificateName: certificate-firendly-name
///       environmentName: testcontainerenv
///       location: East US
///       properties:
///         certificateType: ImagePullTrustedCA
///         password: private key password
///         value: Y2VydA==
///       resourceGroupName: examplerg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Certificate using Managed Identity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificate = new AzureNative.App.Certificate("certificate", new()
///     {
///         CertificateName = "certificate-firendly-name",
///         EnvironmentName = "testcontainerenv",
///         Location = "East US",
///         Properties = new AzureNative.App.Inputs.CertificatePropertiesArgs
///         {
///             CertificateKeyVaultProperties = new AzureNative.App.Inputs.CertificateKeyVaultPropertiesArgs
///             {
///                 Identity = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/test-user-mi",
///                 KeyVaultUrl = "https://xxxxxxxx.vault.azure.net/certificates/certName",
///             },
///             CertificateType = AzureNative.App.CertificateType.ServerSSLCertificate,
///         },
///         ResourceGroupName = "examplerg",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewCertificate(ctx, "certificate", &app.CertificateArgs{
/// 			CertificateName: pulumi.String("certificate-firendly-name"),
/// 			EnvironmentName: pulumi.String("testcontainerenv"),
/// 			Location:        pulumi.String("East US"),
/// 			Properties: &app.CertificatePropertiesArgs{
/// 				CertificateKeyVaultProperties: &app.CertificateKeyVaultPropertiesArgs{
/// 					Identity:    pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/test-user-mi"),
/// 					KeyVaultUrl: pulumi.String("https://xxxxxxxx.vault.azure.net/certificates/certName"),
/// 				},
/// 				CertificateType: pulumi.String(app.CertificateTypeServerSSLCertificate),
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// resource "azure-native_app_certificate" "certificate" {
///   certificate_name = "certificate-firendly-name"
///   environment_name = "testcontainerenv"
///   location         = "East US"
///   properties = {
///     certificate_key_vault_properties = {
///       identity      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/test-user-mi"
///       key_vault_url = "https://xxxxxxxx.vault.azure.net/certificates/certName"
///     }
///     certificate_type = "ServerSSLCertificate"
///   }
///   resource_group_name = "examplerg"
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
/// import com.pulumi.azurenative.app.Certificate;
/// import com.pulumi.azurenative.app.CertificateArgs;
/// import com.pulumi.azurenative.app.inputs.CertificatePropertiesArgs;
/// import com.pulumi.azurenative.app.inputs.CertificateKeyVaultPropertiesArgs;
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
///             .certificateName("certificate-firendly-name")
///             .environmentName("testcontainerenv")
///             .location("East US")
///             .properties(CertificatePropertiesArgs.builder()
///                 .certificateKeyVaultProperties(CertificateKeyVaultPropertiesArgs.builder()
///                     .identity("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/test-user-mi")
///                     .keyVaultUrl("https://xxxxxxxx.vault.azure.net/certificates/certName")
///                     .build())
///                 .certificateType("ServerSSLCertificate")
///                 .build())
///             .resourceGroupName("examplerg")
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
/// const certificate = new azure_native.app.Certificate("certificate", {
///     certificateName: "certificate-firendly-name",
///     environmentName: "testcontainerenv",
///     location: "East US",
///     properties: {
///         certificateKeyVaultProperties: {
///             identity: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/test-user-mi",
///             keyVaultUrl: "https://xxxxxxxx.vault.azure.net/certificates/certName",
///         },
///         certificateType: azure_native.app.CertificateType.ServerSSLCertificate,
///     },
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// certificate = azure_native.app.Certificate("certificate",
///     certificate_name="certificate-firendly-name",
///     environment_name="testcontainerenv",
///     location="East US",
///     properties={
///         "certificate_key_vault_properties": {
///             "identity": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/test-user-mi",
///             "key_vault_url": "https://xxxxxxxx.vault.azure.net/certificates/certName",
///         },
///         "certificate_type": azure_native.app.CertificateType.SERVER_SSL_CERTIFICATE,
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   certificate:
///     type: azure-native:app:Certificate
///     properties:
///       certificateName: certificate-firendly-name
///       environmentName: testcontainerenv
///       location: East US
///       properties:
///         certificateKeyVaultProperties:
///           identity: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/test-user-mi
///           keyVaultUrl: https://xxxxxxxx.vault.azure.net/certificates/certName
///         certificateType: ServerSSLCertificate
///       resourceGroupName: examplerg
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
/// $ pulumi import azure-native:app:Certificate myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/managedEnvironments/{environmentName}/certificates/{certificateName}
/// ```
class Certificate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Certificate resource specific properties
  late final pulumi.Output<CertificateResponseProperties> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_app_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CertificateResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Certificate] resource.
  Certificate.reference(String urn)
    : super(
        'azure-native:app:Certificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CertificateResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
