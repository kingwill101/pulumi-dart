import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'key_vault_contract_properties_response.dart';

/// Certificate details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateCertificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificate = new AzureNative.ApiManagement.Certificate("certificate", new()
///     {
///         CertificateId = "tempcert",
///         Data = "****************Base 64 Encoded Certificate *******************************",
///         Password = "****Certificate Password******",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewCertificate(ctx, "certificate", &apimanagement.CertificateArgs{
/// 			CertificateId:     pulumi.String("tempcert"),
/// 			Data:              pulumi.String("****************Base 64 Encoded Certificate *******************************"),
/// 			Password:          pulumi.String("****Certificate Password******"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// resource "azure-native_apimanagement_certificate" "certificate" {
///   certificate_id      = "tempcert"
///   data                = "****************Base 64 Encoded Certificate *******************************"
///   password            = "****Certificate Password******"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
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
/// import com.pulumi.azurenative.apimanagement.Certificate;
/// import com.pulumi.azurenative.apimanagement.CertificateArgs;
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
///             .certificateId("tempcert")
///             .data("****************Base 64 Encoded Certificate *******************************")
///             .password("****Certificate Password******")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
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
/// const certificate = new azure_native.apimanagement.Certificate("certificate", {
///     certificateId: "tempcert",
///     data: "****************Base 64 Encoded Certificate *******************************",
///     password: "****Certificate Password******",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// certificate = azure_native.apimanagement.Certificate("certificate",
///     certificate_id="tempcert",
///     data="****************Base 64 Encoded Certificate *******************************",
///     password="****Certificate Password******",
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   certificate:
///     type: azure-native:apimanagement:Certificate
///     properties:
///       certificateId: tempcert
///       data: '****************Base 64 Encoded Certificate *******************************'
///       password: '****Certificate Password******'
///       resourceGroupName: rg1
///       serviceName: apimService1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateCertificateWithKeyVault
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificate = new AzureNative.ApiManagement.Certificate("certificate", new()
///     {
///         CertificateId = "templateCertkv",
///         KeyVault = new AzureNative.ApiManagement.Inputs.KeyVaultContractCreatePropertiesArgs
///         {
///             IdentityClientId = "ceaa6b06-c00f-43ef-99ac-f53d1fe876a0",
///             SecretIdentifier = "https://rpbvtkeyvaultintegration.vault-int.azure-int.net/secrets/msitestingCert",
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewCertificate(ctx, "certificate", &apimanagement.CertificateArgs{
/// 			CertificateId: pulumi.String("templateCertkv"),
/// 			KeyVault: &apimanagement.KeyVaultContractCreatePropertiesArgs{
/// 				IdentityClientId: pulumi.String("ceaa6b06-c00f-43ef-99ac-f53d1fe876a0"),
/// 				SecretIdentifier: pulumi.String("https://rpbvtkeyvaultintegration.vault-int.azure-int.net/secrets/msitestingCert"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// resource "azure-native_apimanagement_certificate" "certificate" {
///   certificate_id = "templateCertkv"
///   key_vault = {
///     identity_client_id = "ceaa6b06-c00f-43ef-99ac-f53d1fe876a0"
///     secret_identifier  = "https://rpbvtkeyvaultintegration.vault-int.azure-int.net/secrets/msitestingCert"
///   }
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
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
/// import com.pulumi.azurenative.apimanagement.Certificate;
/// import com.pulumi.azurenative.apimanagement.CertificateArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.KeyVaultContractCreatePropertiesArgs;
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
///             .certificateId("templateCertkv")
///             .keyVault(KeyVaultContractCreatePropertiesArgs.builder()
///                 .identityClientId("ceaa6b06-c00f-43ef-99ac-f53d1fe876a0")
///                 .secretIdentifier("https://rpbvtkeyvaultintegration.vault-int.azure-int.net/secrets/msitestingCert")
///                 .build())
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
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
/// const certificate = new azure_native.apimanagement.Certificate("certificate", {
///     certificateId: "templateCertkv",
///     keyVault: {
///         identityClientId: "ceaa6b06-c00f-43ef-99ac-f53d1fe876a0",
///         secretIdentifier: "https://rpbvtkeyvaultintegration.vault-int.azure-int.net/secrets/msitestingCert",
///     },
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// certificate = azure_native.apimanagement.Certificate("certificate",
///     certificate_id="templateCertkv",
///     key_vault={
///         "identity_client_id": "ceaa6b06-c00f-43ef-99ac-f53d1fe876a0",
///         "secret_identifier": "https://rpbvtkeyvaultintegration.vault-int.azure-int.net/secrets/msitestingCert",
///     },
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   certificate:
///     type: azure-native:apimanagement:Certificate
///     properties:
///       certificateId: templateCertkv
///       keyVault:
///         identityClientId: ceaa6b06-c00f-43ef-99ac-f53d1fe876a0
///         secretIdentifier: https://rpbvtkeyvaultintegration.vault-int.azure-int.net/secrets/msitestingCert
///       resourceGroupName: rg1
///       serviceName: apimService1
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
/// $ pulumi import azure-native:apimanagement:Certificate templateCertkv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/certificates/{certificateId}
/// ```
class Certificate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Expiration date of the certificate. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  late final pulumi.Output<String> expirationDate;
  /// KeyVault location details of the certificate.
  late final pulumi.Output<KeyVaultContractPropertiesResponse?> keyVault;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Subject attribute of the certificate.
  late final pulumi.Output<String> subject;
  /// Thumbprint of the certificate.
  late final pulumi.Output<String> thumbprint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_apimanagement_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    expirationDate = registerOutput<String>('expirationDate');
    keyVault = registerOutput<KeyVaultContractPropertiesResponse?>('keyVault', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyVaultContractPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    subject = registerOutput<String>('subject');
    thumbprint = registerOutput<String>('thumbprint');
    type = registerOutput<String>('type');
  }
}
