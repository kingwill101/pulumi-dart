import 'package:pulumi/pulumi.dart' as pulumi;
import 'afdcustom_domain_args.dart';
import 'afddomain_https_parameters_response.dart';
import 'domain_validation_properties_response.dart';
import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Friendly domain name mapping to the endpoint hostname that the customer provides for branding purposes, e.g. www.contoso.com.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AFDCustomDomains_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var afdCustomDomain = new AzureNative.Cdn.AFDCustomDomain("afdCustomDomain", new()
///     {
///         AzureDnsZone = new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///         {
///             Id = "",
///         },
///         CustomDomainName = "domain1",
///         HostName = "www.someDomain.net",
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
///         TlsSettings = new AzureNative.Cdn.Inputs.AFDDomainHttpsParametersArgs
///         {
///             CertificateType = AzureNative.Cdn.AfdCertificateType.ManagedCertificate,
///             CipherSuiteSetType = AzureNative.Cdn.AfdCipherSuiteSetType.Customized,
///             CustomizedCipherSuiteSet = new AzureNative.Cdn.Inputs.AFDDomainHttpsCustomizedCipherSuiteSetArgs
///             {
///                 CipherSuiteSetForTls12 = new[]
///                 {
///                     AzureNative.Cdn.AfdCustomizedCipherSuiteForTls12.ECDHE_RSA_AES128_GCM_SHA256,
///                 },
///                 CipherSuiteSetForTls13 = new[]
///                 {
///                     AzureNative.Cdn.AfdCustomizedCipherSuiteForTls13.TLS_AES_128_GCM_SHA256,
///                     AzureNative.Cdn.AfdCustomizedCipherSuiteForTls13.TLS_AES_256_GCM_SHA384,
///                 },
///             },
///             MinimumTlsVersion = AzureNative.Cdn.AfdMinimumTlsVersion.TLS12,
///         },
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
/// 		_, err := cdn.NewAFDCustomDomain(ctx, "afdCustomDomain", &cdn.AFDCustomDomainArgs{
/// 			AzureDnsZone: &cdn.ResourceReferenceArgs{
/// 				Id: pulumi.String(""),
/// 			},
/// 			CustomDomainName:  pulumi.String("domain1"),
/// 			HostName:          pulumi.String("www.someDomain.net"),
/// 			ProfileName:       pulumi.String("profile1"),
/// 			ResourceGroupName: pulumi.String("RG"),
/// 			TlsSettings: &cdn.AFDDomainHttpsParametersArgs{
/// 				CertificateType:    pulumi.String(cdn.AfdCertificateTypeManagedCertificate),
/// 				CipherSuiteSetType: pulumi.String(cdn.AfdCipherSuiteSetTypeCustomized),
/// 				CustomizedCipherSuiteSet: &cdn.AFDDomainHttpsCustomizedCipherSuiteSetArgs{
/// 					CipherSuiteSetForTls12: pulumi.StringArray{
/// 						pulumi.String(cdn.AfdCustomizedCipherSuiteForTls12_ECDHE_RSA_AES128_GCM_SHA256),
/// 					},
/// 					CipherSuiteSetForTls13: pulumi.StringArray{
/// 						pulumi.String(cdn.AfdCustomizedCipherSuiteForTls13_TLS_AES_128_GCM_SHA256),
/// 						pulumi.String(cdn.AfdCustomizedCipherSuiteForTls13_TLS_AES_256_GCM_SHA384),
/// 					},
/// 				},
/// 				MinimumTlsVersion: cdn.AfdMinimumTlsVersionTLS12,
/// 			},
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
/// import com.pulumi.azurenative.cdn.AFDCustomDomain;
/// import com.pulumi.azurenative.cdn.AFDCustomDomainArgs;
/// import com.pulumi.azurenative.cdn.inputs.ResourceReferenceArgs;
/// import com.pulumi.azurenative.cdn.inputs.AFDDomainHttpsParametersArgs;
/// import com.pulumi.azurenative.cdn.inputs.AFDDomainHttpsCustomizedCipherSuiteSetArgs;
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
///         var afdCustomDomain = new AFDCustomDomain("afdCustomDomain", AFDCustomDomainArgs.builder()
///             .azureDnsZone(ResourceReferenceArgs.builder()
///                 .id("")
///                 .build())
///             .customDomainName("domain1")
///             .hostName("www.someDomain.net")
///             .profileName("profile1")
///             .resourceGroupName("RG")
///             .tlsSettings(AFDDomainHttpsParametersArgs.builder()
///                 .certificateType("ManagedCertificate")
///                 .cipherSuiteSetType("Customized")
///                 .customizedCipherSuiteSet(AFDDomainHttpsCustomizedCipherSuiteSetArgs.builder()
///                     .cipherSuiteSetForTls12("ECDHE_RSA_AES128_GCM_SHA256")
///                     .cipherSuiteSetForTls13(
///                         "TLS_AES_128_GCM_SHA256",
///                         "TLS_AES_256_GCM_SHA384")
///                     .build())
///                 .minimumTlsVersion("TLS12")
///                 .build())
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
/// const afdCustomDomain = new azure_native.cdn.AFDCustomDomain("afdCustomDomain", {
///     azureDnsZone: {
///         id: "",
///     },
///     customDomainName: "domain1",
///     hostName: "www.someDomain.net",
///     profileName: "profile1",
///     resourceGroupName: "RG",
///     tlsSettings: {
///         certificateType: azure_native.cdn.AfdCertificateType.ManagedCertificate,
///         cipherSuiteSetType: azure_native.cdn.AfdCipherSuiteSetType.Customized,
///         customizedCipherSuiteSet: {
///             cipherSuiteSetForTls12: [azure_native.cdn.AfdCustomizedCipherSuiteForTls12.ECDHE_RSA_AES128_GCM_SHA256],
///             cipherSuiteSetForTls13: [
///                 azure_native.cdn.AfdCustomizedCipherSuiteForTls13.TLS_AES_128_GCM_SHA256,
///                 azure_native.cdn.AfdCustomizedCipherSuiteForTls13.TLS_AES_256_GCM_SHA384,
///             ],
///         },
///         minimumTlsVersion: azure_native.cdn.AfdMinimumTlsVersion.TLS12,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// afd_custom_domain = azure_native.cdn.AFDCustomDomain("afdCustomDomain",
///     azure_dns_zone={
///         "id": "",
///     },
///     custom_domain_name="domain1",
///     host_name="www.someDomain.net",
///     profile_name="profile1",
///     resource_group_name="RG",
///     tls_settings={
///         "certificate_type": azure_native.cdn.AfdCertificateType.MANAGED_CERTIFICATE,
///         "cipher_suite_set_type": azure_native.cdn.AfdCipherSuiteSetType.CUSTOMIZED,
///         "customized_cipher_suite_set": {
///             "cipher_suite_set_for_tls12": [azure_native.cdn.AfdCustomizedCipherSuiteForTls12.ECDH_E_RS_A_AES128_GC_M_SHA256],
///             "cipher_suite_set_for_tls13": [
///                 azure_native.cdn.AfdCustomizedCipherSuiteForTls13.TL_S_AE_S_128_GC_M_SHA256,
///                 azure_native.cdn.AfdCustomizedCipherSuiteForTls13.TL_S_AE_S_256_GC_M_SHA384,
///             ],
///         },
///         "minimum_tls_version": azure_native.cdn.AfdMinimumTlsVersion.TLS12,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   afdCustomDomain:
///     type: azure-native:cdn:AFDCustomDomain
///     properties:
///       azureDnsZone:
///         id: ""
///       customDomainName: domain1
///       hostName: www.someDomain.net
///       profileName: profile1
///       resourceGroupName: RG
///       tlsSettings:
///         certificateType: ManagedCertificate
///         cipherSuiteSetType: Customized
///         customizedCipherSuiteSet:
///           cipherSuiteSetForTls12:
///             - ECDHE_RSA_AES128_GCM_SHA256
///           cipherSuiteSetForTls13:
///             - TLS_AES_128_GCM_SHA256
///             - TLS_AES_256_GCM_SHA384
///         minimumTlsVersion: TLS12
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
/// $ pulumi import azure-native:cdn:AFDCustomDomain domain1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/customDomains/{customDomainName}
/// ```
class AFDCustomDomain extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource reference to the Azure DNS zone
  late final pulumi.Output<ResourceReferenceResponse?> azureDnsZone;
  late final pulumi.Output<String> deploymentStatus;
  /// Provisioning substate shows the progress of custom HTTPS enabling/disabling process step by step. DCV stands for DomainControlValidation.
  late final pulumi.Output<String> domainValidationState;
  /// Key-Value pair representing migration properties for domains.
  late final pulumi.Output<Map<String, String>?> extendedProperties;
  /// The host name of the domain. Must be a domain name.
  late final pulumi.Output<String> hostName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Resource reference to the Azure resource where custom domain ownership was prevalidated
  late final pulumi.Output<ResourceReferenceResponse?> preValidatedCustomDomainResourceId;
  /// The name of the profile which holds the domain.
  late final pulumi.Output<String> profileName;
  /// Provisioning status
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The configuration specifying how to enable HTTPS for the domain - using AzureFrontDoor managed certificate or user's own certificate. If not specified, enabling ssl uses AzureFrontDoor managed certificate by default.
  late final pulumi.Output<AFDDomainHttpsParametersResponse?> tlsSettings;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Values the customer needs to validate domain ownership
  late final pulumi.Output<DomainValidationPropertiesResponse> validationProperties;

  /// Creates a new [AFDCustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AFDCustomDomain]. {@macro pulumi_cdn_afdcustom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AFDCustomDomain(
    String name, {
    AFDCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:AFDCustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.azureDnsZone = registerOutput<ResourceReferenceResponse?>('azureDnsZone');
    this.deploymentStatus = registerOutput<String>('deploymentStatus');
    this.domainValidationState = registerOutput<String>('domainValidationState');
    this.extendedProperties = registerOutput<Map<String, String>?>('extendedProperties');
    this.hostName = registerOutput<String>('hostName');
    this.name = registerOutput<String>('name');
    this.preValidatedCustomDomainResourceId = registerOutput<ResourceReferenceResponse?>('preValidatedCustomDomainResourceId');
    this.profileName = registerOutput<String>('profileName');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tlsSettings = registerOutput<AFDDomainHttpsParametersResponse?>('tlsSettings');
    this.type = registerOutput<String>('type');
    this.validationProperties = registerOutput<DomainValidationPropertiesResponse>('validationProperties');
  }
}
