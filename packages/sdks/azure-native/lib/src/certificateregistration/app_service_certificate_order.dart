import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_certificate_order_args.dart';
import 'app_service_certificate_response.dart';
import 'certificate_details_response.dart';
import 'certificate_order_contact_response.dart';

/// SSL certificate purchase order.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native certificateregistration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Certificate order
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appServiceCertificateOrder = new AzureNative.CertificateRegistration.AppServiceCertificateOrder("appServiceCertificateOrder", new()
///     {
///         AutoRenew = true,
///         CertificateOrderName = "SampleCertificateOrderName",
///         Certificates =
///         {
///             { "SampleCertName1", new AzureNative.CertificateRegistration.Inputs.AppServiceCertificateArgs
///             {
///                 KeyVaultId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName",
///                 KeyVaultSecretName = "SampleSecretName1",
///             } },
///             { "SampleCertName2", new AzureNative.CertificateRegistration.Inputs.AppServiceCertificateArgs
///             {
///                 KeyVaultId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName",
///                 KeyVaultSecretName = "SampleSecretName2",
///             } },
///         },
///         DistinguishedName = "CN=SampleCustomDomain.com",
///         KeySize = 2048,
///         Location = "Global",
///         ProductType = AzureNative.CertificateRegistration.CertificateProductType.StandardDomainValidatedSsl,
///         ResourceGroupName = "testrg123",
///         ValidityInYears = 2,
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
/// 		_, err := certificateregistration.NewAppServiceCertificateOrder(ctx, "appServiceCertificateOrder", &certificateregistration.AppServiceCertificateOrderArgs{
/// 			AutoRenew:            pulumi.Bool(true),
/// 			CertificateOrderName: pulumi.String("SampleCertificateOrderName"),
/// 			Certificates: certificateregistration.AppServiceCertificateMap{
/// 				"SampleCertName1": &certificateregistration.AppServiceCertificateArgs{
/// 					KeyVaultId:         pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName"),
/// 					KeyVaultSecretName: pulumi.String("SampleSecretName1"),
/// 				},
/// 				"SampleCertName2": &certificateregistration.AppServiceCertificateArgs{
/// 					KeyVaultId:         pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName"),
/// 					KeyVaultSecretName: pulumi.String("SampleSecretName2"),
/// 				},
/// 			},
/// 			DistinguishedName: pulumi.String("CN=SampleCustomDomain.com"),
/// 			KeySize:           pulumi.Int(2048),
/// 			Location:          pulumi.String("Global"),
/// 			ProductType:       certificateregistration.CertificateProductTypeStandardDomainValidatedSsl,
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			ValidityInYears:   pulumi.Int(2),
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
/// import com.pulumi.azurenative.certificateregistration.AppServiceCertificateOrder;
/// import com.pulumi.azurenative.certificateregistration.AppServiceCertificateOrderArgs;
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
///         var appServiceCertificateOrder = new AppServiceCertificateOrder("appServiceCertificateOrder", AppServiceCertificateOrderArgs.builder()
///             .autoRenew(true)
///             .certificateOrderName("SampleCertificateOrderName")
///             .certificates(Map.ofEntries(
///                 Map.entry("SampleCertName1", AppServiceCertificateArgs.builder()
///                     .keyVaultId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName")
///                     .keyVaultSecretName("SampleSecretName1")
///                     .build()),
///                 Map.entry("SampleCertName2", AppServiceCertificateArgs.builder()
///                     .keyVaultId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName")
///                     .keyVaultSecretName("SampleSecretName2")
///                     .build())
///             ))
///             .distinguishedName("CN=SampleCustomDomain.com")
///             .keySize(2048)
///             .location("Global")
///             .productType("StandardDomainValidatedSsl")
///             .resourceGroupName("testrg123")
///             .validityInYears(2)
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
/// const appServiceCertificateOrder = new azure_native.certificateregistration.AppServiceCertificateOrder("appServiceCertificateOrder", {
///     autoRenew: true,
///     certificateOrderName: "SampleCertificateOrderName",
///     certificates: {
///         SampleCertName1: {
///             keyVaultId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName",
///             keyVaultSecretName: "SampleSecretName1",
///         },
///         SampleCertName2: {
///             keyVaultId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName",
///             keyVaultSecretName: "SampleSecretName2",
///         },
///     },
///     distinguishedName: "CN=SampleCustomDomain.com",
///     keySize: 2048,
///     location: "Global",
///     productType: azure_native.certificateregistration.CertificateProductType.StandardDomainValidatedSsl,
///     resourceGroupName: "testrg123",
///     validityInYears: 2,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// app_service_certificate_order = azure_native.certificateregistration.AppServiceCertificateOrder("appServiceCertificateOrder",
///     auto_renew=True,
///     certificate_order_name="SampleCertificateOrderName",
///     certificates={
///         "SampleCertName1": {
///             "key_vault_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName",
///             "key_vault_secret_name": "SampleSecretName1",
///         },
///         "SampleCertName2": {
///             "key_vault_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName",
///             "key_vault_secret_name": "SampleSecretName2",
///         },
///     },
///     distinguished_name="CN=SampleCustomDomain.com",
///     key_size=2048,
///     location="Global",
///     product_type=azure_native.certificateregistration.CertificateProductType.STANDARD_DOMAIN_VALIDATED_SSL,
///     resource_group_name="testrg123",
///     validity_in_years=2)
///
/// ```
///
/// ```yaml
/// resources:
///   appServiceCertificateOrder:
///     type: azure-native:certificateregistration:AppServiceCertificateOrder
///     properties:
///       autoRenew: true
///       certificateOrderName: SampleCertificateOrderName
///       certificates:
///         SampleCertName1:
///           keyVaultId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName
///           keyVaultSecretName: SampleSecretName1
///         SampleCertName2:
///           keyVaultId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testrg123/providers/microsoft.keyvault/vaults/SamplevaultName
///           keyVaultSecretName: SampleSecretName2
///       distinguishedName: CN=SampleCustomDomain.com
///       keySize: 2048
///       location: Global
///       productType: StandardDomainValidatedSsl
///       resourceGroupName: testrg123
///       validityInYears: 2
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
/// $ pulumi import azure-native:certificateregistration:AppServiceCertificateOrder SampleCertificateOrderName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CertificateRegistration/certificateOrders/{certificateOrderName}
/// ```
class AppServiceCertificateOrder extends pulumi.CustomResource {
  /// Reasons why App Service Certificate is not renewable at the current moment.
  late final pulumi.Output<List<String>> appServiceCertificateNotRenewableReasons;
  /// &lt;code&gt;true&lt;/code&gt; if the certificate should be automatically renewed when it expires; otherwise, &lt;code&gt;false&lt;/code&gt;.
  late final pulumi.Output<bool?> autoRenew;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// State of the Key Vault secret.
  late final pulumi.Output<Map<String, AppServiceCertificateResponse>?> certificates;
  /// Contact info
  late final pulumi.Output<CertificateOrderContactResponse> contact;
  /// Last CSR that was created for this order.
  late final pulumi.Output<String?> csr;
  /// Certificate distinguished name.
  late final pulumi.Output<String?> distinguishedName;
  /// Domain verification token.
  late final pulumi.Output<String> domainVerificationToken;
  /// Certificate expiration time.
  late final pulumi.Output<String> expirationTime;
  /// Intermediate certificate.
  late final pulumi.Output<CertificateDetailsResponse> intermediate;
  /// &lt;code&gt;true&lt;/code&gt; if private key is external; otherwise, &lt;code&gt;false&lt;/code&gt;.
  late final pulumi.Output<bool> isPrivateKeyExternal;
  /// Certificate key size.
  late final pulumi.Output<int?> keySize;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  late final pulumi.Output<String?> kind;
  /// Certificate last issuance time.
  late final pulumi.Output<String> lastCertificateIssuanceTime;
  /// Resource Location.
  late final pulumi.Output<String> location;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// Time stamp when the certificate would be auto renewed next
  late final pulumi.Output<String> nextAutoRenewalTimeStamp;
  /// Certificate product type.
  late final pulumi.Output<String> productType;
  /// Status of certificate order.
  late final pulumi.Output<String> provisioningState;
  /// Root certificate.
  late final pulumi.Output<CertificateDetailsResponse> root;
  /// Current serial number of the certificate.
  late final pulumi.Output<String> serialNumber;
  /// Signed certificate.
  late final pulumi.Output<CertificateDetailsResponse> signedCertificate;
  /// Current order status.
  late final pulumi.Output<String> status;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// Duration in years (must be 1).
  late final pulumi.Output<int?> validityInYears;

  /// Creates a new [AppServiceCertificateOrder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppServiceCertificateOrder]. {@macro pulumi_certificateregistration_app_service_certificate_order_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppServiceCertificateOrder(
    String name, {
    AppServiceCertificateOrderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:certificateregistration:AppServiceCertificateOrder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appServiceCertificateNotRenewableReasons = registerOutput<List<String>>('appServiceCertificateNotRenewableReasons');
    autoRenew = registerOutput<bool?>('autoRenew');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    certificates = registerOutput<Map<String, AppServiceCertificateResponse>?>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<AppServiceCertificateResponse>(guardedValue, (value) => AppServiceCertificateResponse.fromMap((value as Map).cast<String, dynamic>())); });
    contact = registerOutput<CertificateOrderContactResponse>('contact', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateOrderContactResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    csr = registerOutput<String?>('csr');
    distinguishedName = registerOutput<String?>('distinguishedName');
    domainVerificationToken = registerOutput<String>('domainVerificationToken');
    expirationTime = registerOutput<String>('expirationTime');
    intermediate = registerOutput<CertificateDetailsResponse>('intermediate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isPrivateKeyExternal = registerOutput<bool>('isPrivateKeyExternal');
    keySize = registerOutput<int?>('keySize');
    kind = registerOutput<String?>('kind');
    lastCertificateIssuanceTime = registerOutput<String>('lastCertificateIssuanceTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nextAutoRenewalTimeStamp = registerOutput<String>('nextAutoRenewalTimeStamp');
    productType = registerOutput<String>('productType');
    provisioningState = registerOutput<String>('provisioningState');
    root = registerOutput<CertificateDetailsResponse>('root', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serialNumber = registerOutput<String>('serialNumber');
    signedCertificate = registerOutput<CertificateDetailsResponse>('signedCertificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    validityInYears = registerOutput<int?>('validityInYears');
  }
}
