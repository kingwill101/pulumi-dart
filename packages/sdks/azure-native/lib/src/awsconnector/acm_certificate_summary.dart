import 'package:pulumi/pulumi.dart' as pulumi;
import 'acm_certificate_summary_args.dart';
import 'acm_certificate_summary_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AcmCertificateSummaries_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var acmCertificateSummary = new AzureNative.AwsConnector.AcmCertificateSummary("acmCertificateSummary", new()
///     {
///         Location = "eqfgreyihqzkrcyaxvy",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.AcmCertificateSummaryPropertiesArgs
///         {
///             Arn = "smalkenxqfohwtuwomvsiijg",
///             AwsAccountId = "mmihqxcdhmlvxmnbgspuxddg",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsAcmCertificateSummaryPropertiesArgs
///             {
///                 CertificateArn = "vhqvrajxbcvstwiktrdilktqiwnsij",
///                 CreatedAt = "2024-10-08T03:50:37.721Z",
///                 DomainName = "fiqx",
///                 Exported = true,
///                 ExtendedKeyUsages = new[]
///                 {
///                     AzureNative.AwsConnector.ExtendedKeyUsageName.ANY,
///                 },
///                 HasAdditionalSubjectAlternativeNames = true,
///                 ImportedAt = "2024-10-08T03:50:37.721Z",
///                 InUse = true,
///                 IssuedAt = "2024-10-08T03:50:37.721Z",
///                 KeyAlgorithm = new AzureNative.AwsConnector.Inputs.KeyAlgorithmEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.KeyAlgorithm.EC_prime256v1,
///                 },
///                 KeyUsages = new[]
///                 {
///                     AzureNative.AwsConnector.KeyUsageName.ANY,
///                 },
///                 NotAfter = "2024-10-08T03:50:37.721Z",
///                 NotBefore = "2024-10-08T03:50:37.721Z",
///                 RenewalEligibility = new AzureNative.AwsConnector.Inputs.RenewalEligibilityEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.RenewalEligibility.ELIGIBLE,
///                 },
///                 RevokedAt = "2024-10-08T03:50:37.722Z",
///                 Status = new AzureNative.AwsConnector.Inputs.CertificateStatusEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.CertificateStatus.EXPIRED,
///                 },
///                 SubjectAlternativeNameSummaries = new[]
///                 {
///                     "oqoukflpt",
///                 },
///                 Type = new AzureNative.AwsConnector.Inputs.CertificateTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.CertificateType.AMAZON_ISSUED,
///                 },
///             },
///             AwsRegion = "vkxrwhsmzwvxzraytkujjlrzxdpbz",
///             AwsSourceSchema = "llzijlhflcpnbwpp",
///             AwsTags =
///             {
///                 { "key6233", "kvfcopflgcuaqebawlfvxdozicsaj" },
///             },
///             PublicCloudConnectorsResourceId = "xljncqoovqhqla",
///             PublicCloudResourceName = "qdwfldkrmzyifdlfjpxducgue",
///         },
///         ResourceGroupName = "rgacmCertificateSummary",
///         Tags =
///         {
///             { "key9243", "wylumurgyvmplwt" },
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
/// 	awsconnector "github.com/pulumi/pulumi-azure-native-sdk/awsconnector/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := awsconnector.NewAcmCertificateSummary(ctx, "acmCertificateSummary", &awsconnector.AcmCertificateSummaryArgs{
/// 			Location: pulumi.String("eqfgreyihqzkrcyaxvy"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.AcmCertificateSummaryPropertiesArgs{
/// 				Arn:          pulumi.String("smalkenxqfohwtuwomvsiijg"),
/// 				AwsAccountId: pulumi.String("mmihqxcdhmlvxmnbgspuxddg"),
/// 				AwsProperties: &awsconnector.AwsAcmCertificateSummaryPropertiesArgs{
/// 					CertificateArn: pulumi.String("vhqvrajxbcvstwiktrdilktqiwnsij"),
/// 					CreatedAt:      pulumi.String("2024-10-08T03:50:37.721Z"),
/// 					DomainName:     pulumi.String("fiqx"),
/// 					Exported:       pulumi.Bool(true),
/// 					ExtendedKeyUsages: pulumi.StringArray{
/// 						pulumi.String(awsconnector.ExtendedKeyUsageNameANY),
/// 					},
/// 					HasAdditionalSubjectAlternativeNames: pulumi.Bool(true),
/// 					ImportedAt:                           pulumi.String("2024-10-08T03:50:37.721Z"),
/// 					InUse:                                pulumi.Bool(true),
/// 					IssuedAt:                             pulumi.String("2024-10-08T03:50:37.721Z"),
/// 					KeyAlgorithm: &awsconnector.KeyAlgorithmEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.KeyAlgorithm_EC_prime256v1),
/// 					},
/// 					KeyUsages: pulumi.StringArray{
/// 						pulumi.String(awsconnector.KeyUsageNameANY),
/// 					},
/// 					NotAfter:  pulumi.String("2024-10-08T03:50:37.721Z"),
/// 					NotBefore: pulumi.String("2024-10-08T03:50:37.721Z"),
/// 					RenewalEligibility: &awsconnector.RenewalEligibilityEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.RenewalEligibilityELIGIBLE),
/// 					},
/// 					RevokedAt: pulumi.String("2024-10-08T03:50:37.722Z"),
/// 					Status: &awsconnector.CertificateStatusEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.CertificateStatusEXPIRED),
/// 					},
/// 					SubjectAlternativeNameSummaries: pulumi.StringArray{
/// 						pulumi.String("oqoukflpt"),
/// 					},
/// 					Type: &awsconnector.CertificateTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.CertificateType_AMAZON_ISSUED),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("vkxrwhsmzwvxzraytkujjlrzxdpbz"),
/// 				AwsSourceSchema: pulumi.String("llzijlhflcpnbwpp"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key6233": pulumi.String("kvfcopflgcuaqebawlfvxdozicsaj"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("xljncqoovqhqla"),
/// 				PublicCloudResourceName:         pulumi.String("qdwfldkrmzyifdlfjpxducgue"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgacmCertificateSummary"),
/// 			Tags: pulumi.StringMap{
/// 				"key9243": pulumi.String("wylumurgyvmplwt"),
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
/// import com.pulumi.azurenative.awsconnector.AcmCertificateSummary;
/// import com.pulumi.azurenative.awsconnector.AcmCertificateSummaryArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AcmCertificateSummaryPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsAcmCertificateSummaryPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.KeyAlgorithmEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RenewalEligibilityEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CertificateStatusEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CertificateTypeEnumValueArgs;
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
///         var acmCertificateSummary = new AcmCertificateSummary("acmCertificateSummary", AcmCertificateSummaryArgs.builder()
///             .location("eqfgreyihqzkrcyaxvy")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(AcmCertificateSummaryPropertiesArgs.builder()
///                 .arn("smalkenxqfohwtuwomvsiijg")
///                 .awsAccountId("mmihqxcdhmlvxmnbgspuxddg")
///                 .awsProperties(AwsAcmCertificateSummaryPropertiesArgs.builder()
///                     .certificateArn("vhqvrajxbcvstwiktrdilktqiwnsij")
///                     .createdAt("2024-10-08T03:50:37.721Z")
///                     .domainName("fiqx")
///                     .exported(true)
///                     .extendedKeyUsages("ANY")
///                     .hasAdditionalSubjectAlternativeNames(true)
///                     .importedAt("2024-10-08T03:50:37.721Z")
///                     .inUse(true)
///                     .issuedAt("2024-10-08T03:50:37.721Z")
///                     .keyAlgorithm(KeyAlgorithmEnumValueArgs.builder()
///                         .value("EC_prime256v1")
///                         .build())
///                     .keyUsages("ANY")
///                     .notAfter("2024-10-08T03:50:37.721Z")
///                     .notBefore("2024-10-08T03:50:37.721Z")
///                     .renewalEligibility(RenewalEligibilityEnumValueArgs.builder()
///                         .value("ELIGIBLE")
///                         .build())
///                     .revokedAt("2024-10-08T03:50:37.722Z")
///                     .status(CertificateStatusEnumValueArgs.builder()
///                         .value("EXPIRED")
///                         .build())
///                     .subjectAlternativeNameSummaries("oqoukflpt")
///                     .type(CertificateTypeEnumValueArgs.builder()
///                         .value("AMAZON_ISSUED")
///                         .build())
///                     .build())
///                 .awsRegion("vkxrwhsmzwvxzraytkujjlrzxdpbz")
///                 .awsSourceSchema("llzijlhflcpnbwpp")
///                 .awsTags(Map.of("key6233", "kvfcopflgcuaqebawlfvxdozicsaj"))
///                 .publicCloudConnectorsResourceId("xljncqoovqhqla")
///                 .publicCloudResourceName("qdwfldkrmzyifdlfjpxducgue")
///                 .build())
///             .resourceGroupName("rgacmCertificateSummary")
///             .tags(Map.of("key9243", "wylumurgyvmplwt"))
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
/// const acmCertificateSummary = new azure_native.awsconnector.AcmCertificateSummary("acmCertificateSummary", {
///     location: "eqfgreyihqzkrcyaxvy",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "smalkenxqfohwtuwomvsiijg",
///         awsAccountId: "mmihqxcdhmlvxmnbgspuxddg",
///         awsProperties: {
///             certificateArn: "vhqvrajxbcvstwiktrdilktqiwnsij",
///             createdAt: "2024-10-08T03:50:37.721Z",
///             domainName: "fiqx",
///             exported: true,
///             extendedKeyUsages: [azure_native.awsconnector.ExtendedKeyUsageName.ANY],
///             hasAdditionalSubjectAlternativeNames: true,
///             importedAt: "2024-10-08T03:50:37.721Z",
///             inUse: true,
///             issuedAt: "2024-10-08T03:50:37.721Z",
///             keyAlgorithm: {
///                 value: azure_native.awsconnector.KeyAlgorithm.EC_prime256v1,
///             },
///             keyUsages: [azure_native.awsconnector.KeyUsageName.ANY],
///             notAfter: "2024-10-08T03:50:37.721Z",
///             notBefore: "2024-10-08T03:50:37.721Z",
///             renewalEligibility: {
///                 value: azure_native.awsconnector.RenewalEligibility.ELIGIBLE,
///             },
///             revokedAt: "2024-10-08T03:50:37.722Z",
///             status: {
///                 value: azure_native.awsconnector.CertificateStatus.EXPIRED,
///             },
///             subjectAlternativeNameSummaries: ["oqoukflpt"],
///             type: {
///                 value: azure_native.awsconnector.CertificateType.AMAZON_ISSUED,
///             },
///         },
///         awsRegion: "vkxrwhsmzwvxzraytkujjlrzxdpbz",
///         awsSourceSchema: "llzijlhflcpnbwpp",
///         awsTags: {
///             key6233: "kvfcopflgcuaqebawlfvxdozicsaj",
///         },
///         publicCloudConnectorsResourceId: "xljncqoovqhqla",
///         publicCloudResourceName: "qdwfldkrmzyifdlfjpxducgue",
///     },
///     resourceGroupName: "rgacmCertificateSummary",
///     tags: {
///         key9243: "wylumurgyvmplwt",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// acm_certificate_summary = azure_native.awsconnector.AcmCertificateSummary("acmCertificateSummary",
///     location="eqfgreyihqzkrcyaxvy",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "smalkenxqfohwtuwomvsiijg",
///         "aws_account_id": "mmihqxcdhmlvxmnbgspuxddg",
///         "aws_properties": {
///             "certificate_arn": "vhqvrajxbcvstwiktrdilktqiwnsij",
///             "created_at": "2024-10-08T03:50:37.721Z",
///             "domain_name": "fiqx",
///             "exported": True,
///             "extended_key_usages": [azure_native.awsconnector.ExtendedKeyUsageName.ANY],
///             "has_additional_subject_alternative_names": True,
///             "imported_at": "2024-10-08T03:50:37.721Z",
///             "in_use": True,
///             "issued_at": "2024-10-08T03:50:37.721Z",
///             "key_algorithm": {
///                 "value": azure_native.awsconnector.KeyAlgorithm.E_C_PRIME256V1,
///             },
///             "key_usages": [azure_native.awsconnector.KeyUsageName.ANY],
///             "not_after": "2024-10-08T03:50:37.721Z",
///             "not_before": "2024-10-08T03:50:37.721Z",
///             "renewal_eligibility": {
///                 "value": azure_native.awsconnector.RenewalEligibility.ELIGIBLE,
///             },
///             "revoked_at": "2024-10-08T03:50:37.722Z",
///             "status": {
///                 "value": azure_native.awsconnector.CertificateStatus.EXPIRED,
///             },
///             "subject_alternative_name_summaries": ["oqoukflpt"],
///             "type": {
///                 "value": azure_native.awsconnector.CertificateType.AMAZO_N_ISSUED,
///             },
///         },
///         "aws_region": "vkxrwhsmzwvxzraytkujjlrzxdpbz",
///         "aws_source_schema": "llzijlhflcpnbwpp",
///         "aws_tags": {
///             "key6233": "kvfcopflgcuaqebawlfvxdozicsaj",
///         },
///         "public_cloud_connectors_resource_id": "xljncqoovqhqla",
///         "public_cloud_resource_name": "qdwfldkrmzyifdlfjpxducgue",
///     },
///     resource_group_name="rgacmCertificateSummary",
///     tags={
///         "key9243": "wylumurgyvmplwt",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   acmCertificateSummary:
///     type: azure-native:awsconnector:AcmCertificateSummary
///     properties:
///       location: eqfgreyihqzkrcyaxvy
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: smalkenxqfohwtuwomvsiijg
///         awsAccountId: mmihqxcdhmlvxmnbgspuxddg
///         awsProperties:
///           certificateArn: vhqvrajxbcvstwiktrdilktqiwnsij
///           createdAt: 2024-10-08T03:50:37.721Z
///           domainName: fiqx
///           exported: true
///           extendedKeyUsages:
///             - ANY
///           hasAdditionalSubjectAlternativeNames: true
///           importedAt: 2024-10-08T03:50:37.721Z
///           inUse: true
///           issuedAt: 2024-10-08T03:50:37.721Z
///           keyAlgorithm:
///             value: EC_prime256v1
///           keyUsages:
///             - ANY
///           notAfter: 2024-10-08T03:50:37.721Z
///           notBefore: 2024-10-08T03:50:37.721Z
///           renewalEligibility:
///             value: ELIGIBLE
///           revokedAt: 2024-10-08T03:50:37.722Z
///           status:
///             value: EXPIRED
///           subjectAlternativeNameSummaries:
///             - oqoukflpt
///           type:
///             value: AMAZON_ISSUED
///         awsRegion: vkxrwhsmzwvxzraytkujjlrzxdpbz
///         awsSourceSchema: llzijlhflcpnbwpp
///         awsTags:
///           key6233: kvfcopflgcuaqebawlfvxdozicsaj
///         publicCloudConnectorsResourceId: xljncqoovqhqla
///         publicCloudResourceName: qdwfldkrmzyifdlfjpxducgue
///       resourceGroupName: rgacmCertificateSummary
///       tags:
///         key9243: wylumurgyvmplwt
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
/// $ pulumi import azure-native:awsconnector:AcmCertificateSummary elwkuxydufjmppqyyrr /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/acmCertificateSummaries/{name}
/// ```
class AcmCertificateSummary extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AcmCertificateSummaryPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AcmCertificateSummary].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AcmCertificateSummary]. {@macro pulumi_awsconnector_acm_certificate_summary_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AcmCertificateSummary(
    String name, {
    AcmCertificateSummaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:AcmCertificateSummary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AcmCertificateSummaryPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AcmCertificateSummaryPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
