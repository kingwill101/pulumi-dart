import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_certificate_order_certificate_args.dart';

/// Key Vault container ARM resource for a certificate that is purchased through Azure.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native certificateregistration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Certificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appServiceCertificateOrderCertificate = new AzureNative.CertificateRegistration.AppServiceCertificateOrderCertificate("appServiceCertificateOrderCertificate", new()
///     {
///         CertificateOrderName = "SampleCertificateOrderName",
///         KeyVaultId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName",
///         KeyVaultSecretName = "SampleSecretName1",
///         Location = "Global",
///         Name = "SampleCertName1",
///         ResourceGroupName = "testrg123",
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
/// 	certificateregistration "github.com/pulumi/pulumi-azure-native-sdk/certificateregistration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := certificateregistration.NewAppServiceCertificateOrderCertificate(ctx, "appServiceCertificateOrderCertificate", &certificateregistration.AppServiceCertificateOrderCertificateArgs{
/// 			CertificateOrderName: pulumi.String("SampleCertificateOrderName"),
/// 			KeyVaultId:           pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName"),
/// 			KeyVaultSecretName:   pulumi.String("SampleSecretName1"),
/// 			Location:             pulumi.String("Global"),
/// 			Name:                 pulumi.String("SampleCertName1"),
/// 			ResourceGroupName:    pulumi.String("testrg123"),
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
/// resource "azure-native_certificateregistration_appservicecertificateordercertificate" "appServiceCertificateOrderCertificate" {
///   certificate_order_name = "SampleCertificateOrderName"
///   key_vault_id           = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName"
///   key_vault_secret_name  = "SampleSecretName1"
///   location               = "Global"
///   name                   = "SampleCertName1"
///   resource_group_name    = "testrg123"
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
/// import com.pulumi.azurenative.certificateregistration.AppServiceCertificateOrderCertificate;
/// import com.pulumi.azurenative.certificateregistration.AppServiceCertificateOrderCertificateArgs;
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
///         var appServiceCertificateOrderCertificate = new AppServiceCertificateOrderCertificate("appServiceCertificateOrderCertificate", AppServiceCertificateOrderCertificateArgs.builder()
///             .certificateOrderName("SampleCertificateOrderName")
///             .keyVaultId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName")
///             .keyVaultSecretName("SampleSecretName1")
///             .location("Global")
///             .name("SampleCertName1")
///             .resourceGroupName("testrg123")
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
/// const appServiceCertificateOrderCertificate = new azure_native.certificateregistration.AppServiceCertificateOrderCertificate("appServiceCertificateOrderCertificate", {
///     certificateOrderName: "SampleCertificateOrderName",
///     keyVaultId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName",
///     keyVaultSecretName: "SampleSecretName1",
///     location: "Global",
///     name: "SampleCertName1",
///     resourceGroupName: "testrg123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// app_service_certificate_order_certificate = azure_native.certificateregistration.AppServiceCertificateOrderCertificate("appServiceCertificateOrderCertificate",
///     certificate_order_name="SampleCertificateOrderName",
///     key_vault_id="/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName",
///     key_vault_secret_name="SampleSecretName1",
///     location="Global",
///     name="SampleCertName1",
///     resource_group_name="testrg123")
///
/// ```
///
/// ```yaml
/// resources:
///   appServiceCertificateOrderCertificate:
///     type: azure-native:certificateregistration:AppServiceCertificateOrderCertificate
///     properties:
///       certificateOrderName: SampleCertificateOrderName
///       keyVaultId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName
///       keyVaultSecretName: SampleSecretName1
///       location: Global
///       name: SampleCertName1
///       resourceGroupName: testrg123
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
/// $ pulumi import azure-native:certificateregistration:AppServiceCertificateOrderCertificate SampleCertName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CertificateRegistration/certificateOrders/{certificateOrderName}/certificates/{name}
/// ```
class AppServiceCertificateOrderCertificate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Key Vault resource Id.
  late final pulumi.Output<String?> keyVaultId;
  /// Key Vault secret name.
  late final pulumi.Output<String?> keyVaultSecretName;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  late final pulumi.Output<String?> kind;
  /// Resource Location.
  late final pulumi.Output<String> location;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// Status of the Key Vault secret.
  late final pulumi.Output<String> provisioningState;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [AppServiceCertificateOrderCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppServiceCertificateOrderCertificate]. {@macro pulumi_certificateregistration_app_service_certificate_order_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppServiceCertificateOrderCertificate(
    String name, {
    AppServiceCertificateOrderCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:certificateregistration:AppServiceCertificateOrderCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    keyVaultId = registerOutput<String?>('keyVaultId');
    keyVaultSecretName = registerOutput<String?>('keyVaultSecretName');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AppServiceCertificateOrderCertificate] resource.
  AppServiceCertificateOrderCertificate.reference(String urn)
    : super(
        'azure-native:certificateregistration:AppServiceCertificateOrderCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    keyVaultId = registerOutput<String?>('keyVaultId');
    keyVaultSecretName = registerOutput<String?>('keyVaultSecretName');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
