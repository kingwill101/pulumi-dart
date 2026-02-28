import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_template_args.dart';
import 'certificate_template_identity_constraints.dart';
import 'certificate_template_passthrough_extensions.dart';
import 'certificate_template_predefined_values.dart';

/// Certificate Authority Service provides reusable and parameterized templates that you can use for common certificate issuance scenarios. A certificate template represents a relatively static and well-defined certificate issuance schema within an organization. A certificate template can essentially become a full-fledged vertical certificate issuance framework.
///
///
/// To get more information about CertificateTemplate, see:
///
/// * [API documentation](https://cloud.google.com/certificate-authority-service/docs/reference/rest)
/// * How-to Guides
/// * [Common configurations and Certificate Profiles](https://cloud.google.com/certificate-authority-service/docs/certificate-profile)
/// * [Official Documentation](https://cloud.google.com/certificate-authority-service)
/// * [Understanding Certificate Templates](https://cloud.google.com/certificate-authority-service/docs/certificate-template)
///
/// ## Example Usage
///
/// ### Privateca Template Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.certificateauthority.CertificateTemplate("default", {
///     name: "my-template",
///     location: "us-central1",
///     description: "A sample certificate template",
///     identityConstraints: {
///         allowSubjectAltNamesPassthrough: true,
///         allowSubjectPassthrough: true,
///         celExpression: {
///             description: "Always true",
///             expression: "true",
///             location: "any.file.anywhere",
///             title: "Sample expression",
///         },
///     },
///     maximumLifetime: "86400s",
///     passthroughExtensions: {
///         additionalExtensions: [{
///             objectIdPaths: [
///                 1,
///                 6,
///             ],
///         }],
///         knownExtensions: ["EXTENDED_KEY_USAGE"],
///     },
///     predefinedValues: {
///         additionalExtensions: [{
///             objectId: {
///                 objectIdPaths: [
///                     1,
///                     6,
///                 ],
///             },
///             value: "c3RyaW5nCg==",
///             critical: true,
///         }],
///         aiaOcspServers: ["string"],
///         caOptions: {
///             isCa: false,
///             maxIssuerPathLength: 6,
///         },
///         keyUsage: {
///             baseKeyUsage: {
///                 certSign: false,
///                 contentCommitment: true,
///                 crlSign: false,
///                 dataEncipherment: true,
///                 decipherOnly: true,
///                 digitalSignature: true,
///                 encipherOnly: true,
///                 keyAgreement: true,
///                 keyEncipherment: true,
///             },
///             extendedKeyUsage: {
///                 clientAuth: true,
///                 codeSigning: true,
///                 emailProtection: true,
///                 ocspSigning: true,
///                 serverAuth: true,
///                 timeStamping: true,
///             },
///             unknownExtendedKeyUsages: [{
///                 objectIdPaths: [
///                     1,
///                     6,
///                 ],
///             }],
///         },
///         policyIds: [{
///             objectIdPaths: [
///                 1,
///                 6,
///             ],
///         }],
///     },
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificateauthority.CertificateTemplate("default",
///     name="my-template",
///     location="us-central1",
///     description="A sample certificate template",
///     identity_constraints={
///         "allow_subject_alt_names_passthrough": True,
///         "allow_subject_passthrough": True,
///         "cel_expression": {
///             "description": "Always true",
///             "expression": "true",
///             "location": "any.file.anywhere",
///             "title": "Sample expression",
///         },
///     },
///     maximum_lifetime="86400s",
///     passthrough_extensions={
///         "additional_extensions": [{
///             "object_id_paths": [
///                 1,
///                 6,
///             ],
///         }],
///         "known_extensions": ["EXTENDED_KEY_USAGE"],
///     },
///     predefined_values={
///         "additional_extensions": [{
///             "object_id": {
///                 "object_id_paths": [
///                     1,
///                     6,
///                 ],
///             },
///             "value": "c3RyaW5nCg==",
///             "critical": True,
///         }],
///         "aia_ocsp_servers": ["string"],
///         "ca_options": {
///             "is_ca": False,
///             "max_issuer_path_length": 6,
///         },
///         "key_usage": {
///             "base_key_usage": {
///                 "cert_sign": False,
///                 "content_commitment": True,
///                 "crl_sign": False,
///                 "data_encipherment": True,
///                 "decipher_only": True,
///                 "digital_signature": True,
///                 "encipher_only": True,
///                 "key_agreement": True,
///                 "key_encipherment": True,
///             },
///             "extended_key_usage": {
///                 "client_auth": True,
///                 "code_signing": True,
///                 "email_protection": True,
///                 "ocsp_signing": True,
///                 "server_auth": True,
///                 "time_stamping": True,
///             },
///             "unknown_extended_key_usages": [{
///                 "object_id_paths": [
///                     1,
///                     6,
///                 ],
///             }],
///         },
///         "policy_ids": [{
///             "object_id_paths": [
///                 1,
///                 6,
///             ],
///         }],
///     },
///     labels={
///         "label-one": "value-one",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CertificateAuthority.CertificateTemplate("default", new()
///     {
///         Name = "my-template",
///         Location = "us-central1",
///         Description = "A sample certificate template",
///         IdentityConstraints = new Gcp.CertificateAuthority.Inputs.CertificateTemplateIdentityConstraintsArgs
///         {
///             AllowSubjectAltNamesPassthrough = true,
///             AllowSubjectPassthrough = true,
///             CelExpression = new Gcp.CertificateAuthority.Inputs.CertificateTemplateIdentityConstraintsCelExpressionArgs
///             {
///                 Description = "Always true",
///                 Expression = "true",
///                 Location = "any.file.anywhere",
///                 Title = "Sample expression",
///             },
///         },
///         MaximumLifetime = "86400s",
///         PassthroughExtensions = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePassthroughExtensionsArgs
///         {
///             AdditionalExtensions = new[]
///             {
///                 new Gcp.CertificateAuthority.Inputs.CertificateTemplatePassthroughExtensionsAdditionalExtensionArgs
///                 {
///                     ObjectIdPaths = new[]
///                     {
///                         1,
///                         6,
///                     },
///                 },
///             },
///             KnownExtensions = new[]
///             {
///                 "EXTENDED_KEY_USAGE",
///             },
///         },
///         PredefinedValues = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesArgs
///         {
///             AdditionalExtensions = new[]
///             {
///                 new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesAdditionalExtensionArgs
///                 {
///                     ObjectId = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesAdditionalExtensionObjectIdArgs
///                     {
///                         ObjectIdPaths = new[]
///                         {
///                             1,
///                             6,
///                         },
///                     },
///                     Value = "c3RyaW5nCg==",
///                     Critical = true,
///                 },
///             },
///             AiaOcspServers = new[]
///             {
///                 "string",
///             },
///             CaOptions = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesCaOptionsArgs
///             {
///                 IsCa = false,
///                 MaxIssuerPathLength = 6,
///             },
///             KeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesKeyUsageArgs
///             {
///                 BaseKeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsageArgs
///                 {
///                     CertSign = false,
///                     ContentCommitment = true,
///                     CrlSign = false,
///                     DataEncipherment = true,
///                     DecipherOnly = true,
///                     DigitalSignature = true,
///                     EncipherOnly = true,
///                     KeyAgreement = true,
///                     KeyEncipherment = true,
///                 },
///                 ExtendedKeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsageArgs
///                 {
///                     ClientAuth = true,
///                     CodeSigning = true,
///                     EmailProtection = true,
///                     OcspSigning = true,
///                     ServerAuth = true,
///                     TimeStamping = true,
///                 },
///                 UnknownExtendedKeyUsages = new[]
///                 {
///                     new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsageArgs
///                     {
///                         ObjectIdPaths = new[]
///                         {
///                             1,
///                             6,
///                         },
///                     },
///                 },
///             },
///             PolicyIds = new[]
///             {
///                 new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesPolicyIdArgs
///                 {
///                     ObjectIdPaths = new[]
///                     {
///                         1,
///                         6,
///                     },
///                 },
///             },
///         },
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := certificateauthority.NewCertificateTemplate(ctx, "default", &certificateauthority.CertificateTemplateArgs{
/// 			Name:        pulumi.String("my-template"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("A sample certificate template"),
/// 			IdentityConstraints: &certificateauthority.CertificateTemplateIdentityConstraintsArgs{
/// 				AllowSubjectAltNamesPassthrough: pulumi.Bool(true),
/// 				AllowSubjectPassthrough:         pulumi.Bool(true),
/// 				CelExpression: &certificateauthority.CertificateTemplateIdentityConstraintsCelExpressionArgs{
/// 					Description: pulumi.String("Always true"),
/// 					Expression:  pulumi.String("true"),
/// 					Location:    pulumi.String("any.file.anywhere"),
/// 					Title:       pulumi.String("Sample expression"),
/// 				},
/// 			},
/// 			MaximumLifetime: pulumi.String("86400s"),
/// 			PassthroughExtensions: &certificateauthority.CertificateTemplatePassthroughExtensionsArgs{
/// 				AdditionalExtensions: certificateauthority.CertificateTemplatePassthroughExtensionsAdditionalExtensionArray{
/// 					&certificateauthority.CertificateTemplatePassthroughExtensionsAdditionalExtensionArgs{
/// 						ObjectIdPaths: pulumi.IntArray{
/// 							pulumi.Int(1),
/// 							pulumi.Int(6),
/// 						},
/// 					},
/// 				},
/// 				KnownExtensions: pulumi.StringArray{
/// 					pulumi.String("EXTENDED_KEY_USAGE"),
/// 				},
/// 			},
/// 			PredefinedValues: &certificateauthority.CertificateTemplatePredefinedValuesArgs{
/// 				AdditionalExtensions: certificateauthority.CertificateTemplatePredefinedValuesAdditionalExtensionArray{
/// 					&certificateauthority.CertificateTemplatePredefinedValuesAdditionalExtensionArgs{
/// 						ObjectId: &certificateauthority.CertificateTemplatePredefinedValuesAdditionalExtensionObjectIdArgs{
/// 							ObjectIdPaths: pulumi.IntArray{
/// 								pulumi.Int(1),
/// 								pulumi.Int(6),
/// 							},
/// 						},
/// 						Value:    pulumi.String("c3RyaW5nCg=="),
/// 						Critical: pulumi.Bool(true),
/// 					},
/// 				},
/// 				AiaOcspServers: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				CaOptions: &certificateauthority.CertificateTemplatePredefinedValuesCaOptionsArgs{
/// 					IsCa:                pulumi.Bool(false),
/// 					MaxIssuerPathLength: pulumi.Int(6),
/// 				},
/// 				KeyUsage: &certificateauthority.CertificateTemplatePredefinedValuesKeyUsageArgs{
/// 					BaseKeyUsage: &certificateauthority.CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsageArgs{
/// 						CertSign:          pulumi.Bool(false),
/// 						ContentCommitment: pulumi.Bool(true),
/// 						CrlSign:           pulumi.Bool(false),
/// 						DataEncipherment:  pulumi.Bool(true),
/// 						DecipherOnly:      pulumi.Bool(true),
/// 						DigitalSignature:  pulumi.Bool(true),
/// 						EncipherOnly:      pulumi.Bool(true),
/// 						KeyAgreement:      pulumi.Bool(true),
/// 						KeyEncipherment:   pulumi.Bool(true),
/// 					},
/// 					ExtendedKeyUsage: &certificateauthority.CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsageArgs{
/// 						ClientAuth:      pulumi.Bool(true),
/// 						CodeSigning:     pulumi.Bool(true),
/// 						EmailProtection: pulumi.Bool(true),
/// 						OcspSigning:     pulumi.Bool(true),
/// 						ServerAuth:      pulumi.Bool(true),
/// 						TimeStamping:    pulumi.Bool(true),
/// 					},
/// 					UnknownExtendedKeyUsages: certificateauthority.CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsageArray{
/// 						&certificateauthority.CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsageArgs{
/// 							ObjectIdPaths: pulumi.IntArray{
/// 								pulumi.Int(1),
/// 								pulumi.Int(6),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				PolicyIds: certificateauthority.CertificateTemplatePredefinedValuesPolicyIdArray{
/// 					&certificateauthority.CertificateTemplatePredefinedValuesPolicyIdArgs{
/// 						ObjectIdPaths: pulumi.IntArray{
/// 							pulumi.Int(1),
/// 							pulumi.Int(6),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplate;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplateIdentityConstraintsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplateIdentityConstraintsCelExpressionArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePassthroughExtensionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsageArgs;
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
///         var default_ = new CertificateTemplate("default", CertificateTemplateArgs.builder()
///             .name("my-template")
///             .location("us-central1")
///             .description("A sample certificate template")
///             .identityConstraints(CertificateTemplateIdentityConstraintsArgs.builder()
///                 .allowSubjectAltNamesPassthrough(true)
///                 .allowSubjectPassthrough(true)
///                 .celExpression(CertificateTemplateIdentityConstraintsCelExpressionArgs.builder()
///                     .description("Always true")
///                     .expression("true")
///                     .location("any.file.anywhere")
///                     .title("Sample expression")
///                     .build())
///                 .build())
///             .maximumLifetime("86400s")
///             .passthroughExtensions(CertificateTemplatePassthroughExtensionsArgs.builder()
///                 .additionalExtensions(CertificateTemplatePassthroughExtensionsAdditionalExtensionArgs.builder()
///                     .objectIdPaths(
///                         1,
///                         6)
///                     .build())
///                 .knownExtensions("EXTENDED_KEY_USAGE")
///                 .build())
///             .predefinedValues(CertificateTemplatePredefinedValuesArgs.builder()
///                 .additionalExtensions(CertificateTemplatePredefinedValuesAdditionalExtensionArgs.builder()
///                     .objectId(CertificateTemplatePredefinedValuesAdditionalExtensionObjectIdArgs.builder()
///                         .objectIdPaths(
///                             1,
///                             6)
///                         .build())
///                     .value("c3RyaW5nCg==")
///                     .critical(true)
///                     .build())
///                 .aiaOcspServers("string")
///                 .caOptions(CertificateTemplatePredefinedValuesCaOptionsArgs.builder()
///                     .isCa(false)
///                     .maxIssuerPathLength(6)
///                     .build())
///                 .keyUsage(CertificateTemplatePredefinedValuesKeyUsageArgs.builder()
///                     .baseKeyUsage(CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsageArgs.builder()
///                         .certSign(false)
///                         .contentCommitment(true)
///                         .crlSign(false)
///                         .dataEncipherment(true)
///                         .decipherOnly(true)
///                         .digitalSignature(true)
///                         .encipherOnly(true)
///                         .keyAgreement(true)
///                         .keyEncipherment(true)
///                         .build())
///                     .extendedKeyUsage(CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsageArgs.builder()
///                         .clientAuth(true)
///                         .codeSigning(true)
///                         .emailProtection(true)
///                         .ocspSigning(true)
///                         .serverAuth(true)
///                         .timeStamping(true)
///                         .build())
///                     .unknownExtendedKeyUsages(CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsageArgs.builder()
///                         .objectIdPaths(
///                             1,
///                             6)
///                         .build())
///                     .build())
///                 .policyIds(CertificateTemplatePredefinedValuesPolicyIdArgs.builder()
///                     .objectIdPaths(
///                         1,
///                         6)
///                     .build())
///                 .build())
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificateauthority:CertificateTemplate
///     properties:
///       name: my-template
///       location: us-central1
///       description: A sample certificate template
///       identityConstraints:
///         allowSubjectAltNamesPassthrough: true
///         allowSubjectPassthrough: true
///         celExpression:
///           description: Always true
///           expression: 'true'
///           location: any.file.anywhere
///           title: Sample expression
///       maximumLifetime: 86400s
///       passthroughExtensions:
///         additionalExtensions:
///           - objectIdPaths:
///               - 1
///               - 6
///         knownExtensions:
///           - EXTENDED_KEY_USAGE
///       predefinedValues:
///         additionalExtensions:
///           - objectId:
///               objectIdPaths:
///                 - 1
///                 - 6
///             value: c3RyaW5nCg==
///             critical: true
///         aiaOcspServers:
///           - string
///         caOptions:
///           isCa: false
///           maxIssuerPathLength: 6
///         keyUsage:
///           baseKeyUsage:
///             certSign: false
///             contentCommitment: true
///             crlSign: false
///             dataEncipherment: true
///             decipherOnly: true
///             digitalSignature: true
///             encipherOnly: true
///             keyAgreement: true
///             keyEncipherment: true
///           extendedKeyUsage:
///             clientAuth: true
///             codeSigning: true
///             emailProtection: true
///             ocspSigning: true
///             serverAuth: true
///             timeStamping: true
///           unknownExtendedKeyUsages:
///             - objectIdPaths:
///                 - 1
///                 - 6
///         policyIds:
///           - objectIdPaths:
///               - 1
///               - 6
///       labels:
///         label-one: value-one
/// ```
///
/// ### Privateca Template Zero Max Issuer Path Length Null Ca
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.certificateauthority.CertificateTemplate("default", {
///     name: "my-template",
///     location: "us-central1",
///     description: "A sample certificate template",
///     identityConstraints: {
///         allowSubjectAltNamesPassthrough: true,
///         allowSubjectPassthrough: true,
///         celExpression: {
///             description: "Always true",
///             expression: "true",
///             location: "any.file.anywhere",
///             title: "Sample expression",
///         },
///     },
///     maximumLifetime: "86400s",
///     passthroughExtensions: {
///         additionalExtensions: [{
///             objectIdPaths: [
///                 1,
///                 6,
///             ],
///         }],
///         knownExtensions: ["EXTENDED_KEY_USAGE"],
///     },
///     predefinedValues: {
///         additionalExtensions: [{
///             objectId: {
///                 objectIdPaths: [
///                     1,
///                     6,
///                 ],
///             },
///             value: "c3RyaW5nCg==",
///             critical: true,
///         }],
///         aiaOcspServers: ["string"],
///         caOptions: {
///             isCa: false,
///             nullCa: true,
///             zeroMaxIssuerPathLength: true,
///             maxIssuerPathLength: 0,
///         },
///         keyUsage: {
///             baseKeyUsage: {
///                 certSign: false,
///                 contentCommitment: true,
///                 crlSign: false,
///                 dataEncipherment: true,
///                 decipherOnly: true,
///                 digitalSignature: true,
///                 encipherOnly: true,
///                 keyAgreement: true,
///                 keyEncipherment: true,
///             },
///             extendedKeyUsage: {
///                 clientAuth: true,
///                 codeSigning: true,
///                 emailProtection: true,
///                 ocspSigning: true,
///                 serverAuth: true,
///                 timeStamping: true,
///             },
///             unknownExtendedKeyUsages: [{
///                 objectIdPaths: [
///                     1,
///                     6,
///                 ],
///             }],
///         },
///         policyIds: [{
///             objectIdPaths: [
///                 1,
///                 6,
///             ],
///         }],
///         nameConstraints: {
///             critical: true,
///             permittedDnsNames: [
///                 "*.example1.com",
///                 "*.example2.com",
///             ],
///             excludedDnsNames: [
///                 "*.deny.example1.com",
///                 "*.deny.example2.com",
///             ],
///             permittedIpRanges: [
///                 "10.0.0.0/8",
///                 "11.0.0.0/8",
///             ],
///             excludedIpRanges: [
///                 "10.1.1.0/24",
///                 "11.1.1.0/24",
///             ],
///             permittedEmailAddresses: [
///                 ".example1.com",
///                 ".example2.com",
///             ],
///             excludedEmailAddresses: [
///                 ".deny.example1.com",
///                 ".deny.example2.com",
///             ],
///             permittedUris: [
///                 ".example1.com",
///                 ".example2.com",
///             ],
///             excludedUris: [
///                 ".deny.example1.com",
///                 ".deny.example2.com",
///             ],
///         },
///     },
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificateauthority.CertificateTemplate("default",
///     name="my-template",
///     location="us-central1",
///     description="A sample certificate template",
///     identity_constraints={
///         "allow_subject_alt_names_passthrough": True,
///         "allow_subject_passthrough": True,
///         "cel_expression": {
///             "description": "Always true",
///             "expression": "true",
///             "location": "any.file.anywhere",
///             "title": "Sample expression",
///         },
///     },
///     maximum_lifetime="86400s",
///     passthrough_extensions={
///         "additional_extensions": [{
///             "object_id_paths": [
///                 1,
///                 6,
///             ],
///         }],
///         "known_extensions": ["EXTENDED_KEY_USAGE"],
///     },
///     predefined_values={
///         "additional_extensions": [{
///             "object_id": {
///                 "object_id_paths": [
///                     1,
///                     6,
///                 ],
///             },
///             "value": "c3RyaW5nCg==",
///             "critical": True,
///         }],
///         "aia_ocsp_servers": ["string"],
///         "ca_options": {
///             "is_ca": False,
///             "null_ca": True,
///             "zero_max_issuer_path_length": True,
///             "max_issuer_path_length": 0,
///         },
///         "key_usage": {
///             "base_key_usage": {
///                 "cert_sign": False,
///                 "content_commitment": True,
///                 "crl_sign": False,
///                 "data_encipherment": True,
///                 "decipher_only": True,
///                 "digital_signature": True,
///                 "encipher_only": True,
///                 "key_agreement": True,
///                 "key_encipherment": True,
///             },
///             "extended_key_usage": {
///                 "client_auth": True,
///                 "code_signing": True,
///                 "email_protection": True,
///                 "ocsp_signing": True,
///                 "server_auth": True,
///                 "time_stamping": True,
///             },
///             "unknown_extended_key_usages": [{
///                 "object_id_paths": [
///                     1,
///                     6,
///                 ],
///             }],
///         },
///         "policy_ids": [{
///             "object_id_paths": [
///                 1,
///                 6,
///             ],
///         }],
///         "name_constraints": {
///             "critical": True,
///             "permitted_dns_names": [
///                 "*.example1.com",
///                 "*.example2.com",
///             ],
///             "excluded_dns_names": [
///                 "*.deny.example1.com",
///                 "*.deny.example2.com",
///             ],
///             "permitted_ip_ranges": [
///                 "10.0.0.0/8",
///                 "11.0.0.0/8",
///             ],
///             "excluded_ip_ranges": [
///                 "10.1.1.0/24",
///                 "11.1.1.0/24",
///             ],
///             "permitted_email_addresses": [
///                 ".example1.com",
///                 ".example2.com",
///             ],
///             "excluded_email_addresses": [
///                 ".deny.example1.com",
///                 ".deny.example2.com",
///             ],
///             "permitted_uris": [
///                 ".example1.com",
///                 ".example2.com",
///             ],
///             "excluded_uris": [
///                 ".deny.example1.com",
///                 ".deny.example2.com",
///             ],
///         },
///     },
///     labels={
///         "label-one": "value-one",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CertificateAuthority.CertificateTemplate("default", new()
///     {
///         Name = "my-template",
///         Location = "us-central1",
///         Description = "A sample certificate template",
///         IdentityConstraints = new Gcp.CertificateAuthority.Inputs.CertificateTemplateIdentityConstraintsArgs
///         {
///             AllowSubjectAltNamesPassthrough = true,
///             AllowSubjectPassthrough = true,
///             CelExpression = new Gcp.CertificateAuthority.Inputs.CertificateTemplateIdentityConstraintsCelExpressionArgs
///             {
///                 Description = "Always true",
///                 Expression = "true",
///                 Location = "any.file.anywhere",
///                 Title = "Sample expression",
///             },
///         },
///         MaximumLifetime = "86400s",
///         PassthroughExtensions = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePassthroughExtensionsArgs
///         {
///             AdditionalExtensions = new[]
///             {
///                 new Gcp.CertificateAuthority.Inputs.CertificateTemplatePassthroughExtensionsAdditionalExtensionArgs
///                 {
///                     ObjectIdPaths = new[]
///                     {
///                         1,
///                         6,
///                     },
///                 },
///             },
///             KnownExtensions = new[]
///             {
///                 "EXTENDED_KEY_USAGE",
///             },
///         },
///         PredefinedValues = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesArgs
///         {
///             AdditionalExtensions = new[]
///             {
///                 new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesAdditionalExtensionArgs
///                 {
///                     ObjectId = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesAdditionalExtensionObjectIdArgs
///                     {
///                         ObjectIdPaths = new[]
///                         {
///                             1,
///                             6,
///                         },
///                     },
///                     Value = "c3RyaW5nCg==",
///                     Critical = true,
///                 },
///             },
///             AiaOcspServers = new[]
///             {
///                 "string",
///             },
///             CaOptions = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesCaOptionsArgs
///             {
///                 IsCa = false,
///                 NullCa = true,
///                 ZeroMaxIssuerPathLength = true,
///                 MaxIssuerPathLength = 0,
///             },
///             KeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesKeyUsageArgs
///             {
///                 BaseKeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsageArgs
///                 {
///                     CertSign = false,
///                     ContentCommitment = true,
///                     CrlSign = false,
///                     DataEncipherment = true,
///                     DecipherOnly = true,
///                     DigitalSignature = true,
///                     EncipherOnly = true,
///                     KeyAgreement = true,
///                     KeyEncipherment = true,
///                 },
///                 ExtendedKeyUsage = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsageArgs
///                 {
///                     ClientAuth = true,
///                     CodeSigning = true,
///                     EmailProtection = true,
///                     OcspSigning = true,
///                     ServerAuth = true,
///                     TimeStamping = true,
///                 },
///                 UnknownExtendedKeyUsages = new[]
///                 {
///                     new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsageArgs
///                     {
///                         ObjectIdPaths = new[]
///                         {
///                             1,
///                             6,
///                         },
///                     },
///                 },
///             },
///             PolicyIds = new[]
///             {
///                 new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesPolicyIdArgs
///                 {
///                     ObjectIdPaths = new[]
///                     {
///                         1,
///                         6,
///                     },
///                 },
///             },
///             NameConstraints = new Gcp.CertificateAuthority.Inputs.CertificateTemplatePredefinedValuesNameConstraintsArgs
///             {
///                 Critical = true,
///                 PermittedDnsNames = new[]
///                 {
///                     "*.example1.com",
///                     "*.example2.com",
///                 },
///                 ExcludedDnsNames = new[]
///                 {
///                     "*.deny.example1.com",
///                     "*.deny.example2.com",
///                 },
///                 PermittedIpRanges = new[]
///                 {
///                     "10.0.0.0/8",
///                     "11.0.0.0/8",
///                 },
///                 ExcludedIpRanges = new[]
///                 {
///                     "10.1.1.0/24",
///                     "11.1.1.0/24",
///                 },
///                 PermittedEmailAddresses = new[]
///                 {
///                     ".example1.com",
///                     ".example2.com",
///                 },
///                 ExcludedEmailAddresses = new[]
///                 {
///                     ".deny.example1.com",
///                     ".deny.example2.com",
///                 },
///                 PermittedUris = new[]
///                 {
///                     ".example1.com",
///                     ".example2.com",
///                 },
///                 ExcludedUris = new[]
///                 {
///                     ".deny.example1.com",
///                     ".deny.example2.com",
///                 },
///             },
///         },
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := certificateauthority.NewCertificateTemplate(ctx, "default", &certificateauthority.CertificateTemplateArgs{
/// 			Name:        pulumi.String("my-template"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("A sample certificate template"),
/// 			IdentityConstraints: &certificateauthority.CertificateTemplateIdentityConstraintsArgs{
/// 				AllowSubjectAltNamesPassthrough: pulumi.Bool(true),
/// 				AllowSubjectPassthrough:         pulumi.Bool(true),
/// 				CelExpression: &certificateauthority.CertificateTemplateIdentityConstraintsCelExpressionArgs{
/// 					Description: pulumi.String("Always true"),
/// 					Expression:  pulumi.String("true"),
/// 					Location:    pulumi.String("any.file.anywhere"),
/// 					Title:       pulumi.String("Sample expression"),
/// 				},
/// 			},
/// 			MaximumLifetime: pulumi.String("86400s"),
/// 			PassthroughExtensions: &certificateauthority.CertificateTemplatePassthroughExtensionsArgs{
/// 				AdditionalExtensions: certificateauthority.CertificateTemplatePassthroughExtensionsAdditionalExtensionArray{
/// 					&certificateauthority.CertificateTemplatePassthroughExtensionsAdditionalExtensionArgs{
/// 						ObjectIdPaths: pulumi.IntArray{
/// 							pulumi.Int(1),
/// 							pulumi.Int(6),
/// 						},
/// 					},
/// 				},
/// 				KnownExtensions: pulumi.StringArray{
/// 					pulumi.String("EXTENDED_KEY_USAGE"),
/// 				},
/// 			},
/// 			PredefinedValues: &certificateauthority.CertificateTemplatePredefinedValuesArgs{
/// 				AdditionalExtensions: certificateauthority.CertificateTemplatePredefinedValuesAdditionalExtensionArray{
/// 					&certificateauthority.CertificateTemplatePredefinedValuesAdditionalExtensionArgs{
/// 						ObjectId: &certificateauthority.CertificateTemplatePredefinedValuesAdditionalExtensionObjectIdArgs{
/// 							ObjectIdPaths: pulumi.IntArray{
/// 								pulumi.Int(1),
/// 								pulumi.Int(6),
/// 							},
/// 						},
/// 						Value:    pulumi.String("c3RyaW5nCg=="),
/// 						Critical: pulumi.Bool(true),
/// 					},
/// 				},
/// 				AiaOcspServers: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				CaOptions: &certificateauthority.CertificateTemplatePredefinedValuesCaOptionsArgs{
/// 					IsCa:                    pulumi.Bool(false),
/// 					NullCa:                  pulumi.Bool(true),
/// 					ZeroMaxIssuerPathLength: pulumi.Bool(true),
/// 					MaxIssuerPathLength:     pulumi.Int(0),
/// 				},
/// 				KeyUsage: &certificateauthority.CertificateTemplatePredefinedValuesKeyUsageArgs{
/// 					BaseKeyUsage: &certificateauthority.CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsageArgs{
/// 						CertSign:          pulumi.Bool(false),
/// 						ContentCommitment: pulumi.Bool(true),
/// 						CrlSign:           pulumi.Bool(false),
/// 						DataEncipherment:  pulumi.Bool(true),
/// 						DecipherOnly:      pulumi.Bool(true),
/// 						DigitalSignature:  pulumi.Bool(true),
/// 						EncipherOnly:      pulumi.Bool(true),
/// 						KeyAgreement:      pulumi.Bool(true),
/// 						KeyEncipherment:   pulumi.Bool(true),
/// 					},
/// 					ExtendedKeyUsage: &certificateauthority.CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsageArgs{
/// 						ClientAuth:      pulumi.Bool(true),
/// 						CodeSigning:     pulumi.Bool(true),
/// 						EmailProtection: pulumi.Bool(true),
/// 						OcspSigning:     pulumi.Bool(true),
/// 						ServerAuth:      pulumi.Bool(true),
/// 						TimeStamping:    pulumi.Bool(true),
/// 					},
/// 					UnknownExtendedKeyUsages: certificateauthority.CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsageArray{
/// 						&certificateauthority.CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsageArgs{
/// 							ObjectIdPaths: pulumi.IntArray{
/// 								pulumi.Int(1),
/// 								pulumi.Int(6),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				PolicyIds: certificateauthority.CertificateTemplatePredefinedValuesPolicyIdArray{
/// 					&certificateauthority.CertificateTemplatePredefinedValuesPolicyIdArgs{
/// 						ObjectIdPaths: pulumi.IntArray{
/// 							pulumi.Int(1),
/// 							pulumi.Int(6),
/// 						},
/// 					},
/// 				},
/// 				NameConstraints: &certificateauthority.CertificateTemplatePredefinedValuesNameConstraintsArgs{
/// 					Critical: pulumi.Bool(true),
/// 					PermittedDnsNames: pulumi.StringArray{
/// 						pulumi.String("*.example1.com"),
/// 						pulumi.String("*.example2.com"),
/// 					},
/// 					ExcludedDnsNames: pulumi.StringArray{
/// 						pulumi.String("*.deny.example1.com"),
/// 						pulumi.String("*.deny.example2.com"),
/// 					},
/// 					PermittedIpRanges: pulumi.StringArray{
/// 						pulumi.String("10.0.0.0/8"),
/// 						pulumi.String("11.0.0.0/8"),
/// 					},
/// 					ExcludedIpRanges: pulumi.StringArray{
/// 						pulumi.String("10.1.1.0/24"),
/// 						pulumi.String("11.1.1.0/24"),
/// 					},
/// 					PermittedEmailAddresses: pulumi.StringArray{
/// 						pulumi.String(".example1.com"),
/// 						pulumi.String(".example2.com"),
/// 					},
/// 					ExcludedEmailAddresses: pulumi.StringArray{
/// 						pulumi.String(".deny.example1.com"),
/// 						pulumi.String(".deny.example2.com"),
/// 					},
/// 					PermittedUris: pulumi.StringArray{
/// 						pulumi.String(".example1.com"),
/// 						pulumi.String(".example2.com"),
/// 					},
/// 					ExcludedUris: pulumi.StringArray{
/// 						pulumi.String(".deny.example1.com"),
/// 						pulumi.String(".deny.example2.com"),
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplate;
/// import com.pulumi.gcp.certificateauthority.CertificateTemplateArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplateIdentityConstraintsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplateIdentityConstraintsCelExpressionArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePassthroughExtensionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.CertificateTemplatePredefinedValuesNameConstraintsArgs;
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
///         var default_ = new CertificateTemplate("default", CertificateTemplateArgs.builder()
///             .name("my-template")
///             .location("us-central1")
///             .description("A sample certificate template")
///             .identityConstraints(CertificateTemplateIdentityConstraintsArgs.builder()
///                 .allowSubjectAltNamesPassthrough(true)
///                 .allowSubjectPassthrough(true)
///                 .celExpression(CertificateTemplateIdentityConstraintsCelExpressionArgs.builder()
///                     .description("Always true")
///                     .expression("true")
///                     .location("any.file.anywhere")
///                     .title("Sample expression")
///                     .build())
///                 .build())
///             .maximumLifetime("86400s")
///             .passthroughExtensions(CertificateTemplatePassthroughExtensionsArgs.builder()
///                 .additionalExtensions(CertificateTemplatePassthroughExtensionsAdditionalExtensionArgs.builder()
///                     .objectIdPaths(
///                         1,
///                         6)
///                     .build())
///                 .knownExtensions("EXTENDED_KEY_USAGE")
///                 .build())
///             .predefinedValues(CertificateTemplatePredefinedValuesArgs.builder()
///                 .additionalExtensions(CertificateTemplatePredefinedValuesAdditionalExtensionArgs.builder()
///                     .objectId(CertificateTemplatePredefinedValuesAdditionalExtensionObjectIdArgs.builder()
///                         .objectIdPaths(
///                             1,
///                             6)
///                         .build())
///                     .value("c3RyaW5nCg==")
///                     .critical(true)
///                     .build())
///                 .aiaOcspServers("string")
///                 .caOptions(CertificateTemplatePredefinedValuesCaOptionsArgs.builder()
///                     .isCa(false)
///                     .nullCa(true)
///                     .zeroMaxIssuerPathLength(true)
///                     .maxIssuerPathLength(0)
///                     .build())
///                 .keyUsage(CertificateTemplatePredefinedValuesKeyUsageArgs.builder()
///                     .baseKeyUsage(CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsageArgs.builder()
///                         .certSign(false)
///                         .contentCommitment(true)
///                         .crlSign(false)
///                         .dataEncipherment(true)
///                         .decipherOnly(true)
///                         .digitalSignature(true)
///                         .encipherOnly(true)
///                         .keyAgreement(true)
///                         .keyEncipherment(true)
///                         .build())
///                     .extendedKeyUsage(CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsageArgs.builder()
///                         .clientAuth(true)
///                         .codeSigning(true)
///                         .emailProtection(true)
///                         .ocspSigning(true)
///                         .serverAuth(true)
///                         .timeStamping(true)
///                         .build())
///                     .unknownExtendedKeyUsages(CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsageArgs.builder()
///                         .objectIdPaths(
///                             1,
///                             6)
///                         .build())
///                     .build())
///                 .policyIds(CertificateTemplatePredefinedValuesPolicyIdArgs.builder()
///                     .objectIdPaths(
///                         1,
///                         6)
///                     .build())
///                 .nameConstraints(CertificateTemplatePredefinedValuesNameConstraintsArgs.builder()
///                     .critical(true)
///                     .permittedDnsNames(
///                         "*.example1.com",
///                         "*.example2.com")
///                     .excludedDnsNames(
///                         "*.deny.example1.com",
///                         "*.deny.example2.com")
///                     .permittedIpRanges(
///                         "10.0.0.0/8",
///                         "11.0.0.0/8")
///                     .excludedIpRanges(
///                         "10.1.1.0/24",
///                         "11.1.1.0/24")
///                     .permittedEmailAddresses(
///                         ".example1.com",
///                         ".example2.com")
///                     .excludedEmailAddresses(
///                         ".deny.example1.com",
///                         ".deny.example2.com")
///                     .permittedUris(
///                         ".example1.com",
///                         ".example2.com")
///                     .excludedUris(
///                         ".deny.example1.com",
///                         ".deny.example2.com")
///                     .build())
///                 .build())
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificateauthority:CertificateTemplate
///     properties:
///       name: my-template
///       location: us-central1
///       description: A sample certificate template
///       identityConstraints:
///         allowSubjectAltNamesPassthrough: true
///         allowSubjectPassthrough: true
///         celExpression:
///           description: Always true
///           expression: 'true'
///           location: any.file.anywhere
///           title: Sample expression
///       maximumLifetime: 86400s
///       passthroughExtensions:
///         additionalExtensions:
///           - objectIdPaths:
///               - 1
///               - 6
///         knownExtensions:
///           - EXTENDED_KEY_USAGE
///       predefinedValues:
///         additionalExtensions:
///           - objectId:
///               objectIdPaths:
///                 - 1
///                 - 6
///             value: c3RyaW5nCg==
///             critical: true
///         aiaOcspServers:
///           - string
///         caOptions:
///           isCa: false
///           nullCa: true
///           zeroMaxIssuerPathLength: true
///           maxIssuerPathLength: 0
///         keyUsage:
///           baseKeyUsage:
///             certSign: false
///             contentCommitment: true
///             crlSign: false
///             dataEncipherment: true
///             decipherOnly: true
///             digitalSignature: true
///             encipherOnly: true
///             keyAgreement: true
///             keyEncipherment: true
///           extendedKeyUsage:
///             clientAuth: true
///             codeSigning: true
///             emailProtection: true
///             ocspSigning: true
///             serverAuth: true
///             timeStamping: true
///           unknownExtendedKeyUsages:
///             - objectIdPaths:
///                 - 1
///                 - 6
///         policyIds:
///           - objectIdPaths:
///               - 1
///               - 6
///         nameConstraints:
///           critical: true
///           permittedDnsNames:
///             - '*.example1.com'
///             - '*.example2.com'
///           excludedDnsNames:
///             - '*.deny.example1.com'
///             - '*.deny.example2.com'
///           permittedIpRanges:
///             - 10.0.0.0/8
///             - 11.0.0.0/8
///           excludedIpRanges:
///             - 10.1.1.0/24
///             - 11.1.1.0/24
///           permittedEmailAddresses:
///             - .example1.com
///             - .example2.com
///           excludedEmailAddresses:
///             - .deny.example1.com
///             - .deny.example2.com
///           permittedUris:
///             - .example1.com
///             - .example2.com
///           excludedUris:
///             - .deny.example1.com
///             - .deny.example2.com
///       labels:
///         label-one: value-one
/// ```
///
///
/// ## Import
///
/// CertificateTemplate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/certificateTemplates/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, CertificateTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificateTemplate:CertificateTemplate default projects/{{project}}/locations/{{location}}/certificateTemplates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificateTemplate:CertificateTemplate default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificateTemplate:CertificateTemplate default {{location}}/{{name}}
/// ```
class CertificateTemplate extends pulumi.CustomResource {
  /// Output only. The time at which this CertificateTemplate was created.
  late final pulumi.Output<String> createTime;
  /// Optional. A human-readable description of scenarios this template is intended for.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.
  /// Structure is documented below.
  late final pulumi.Output<CertificateTemplateIdentityConstraints?> identityConstraints;
  /// Optional. Labels with user-defined metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// Optional. The maximum lifetime allowed for all issued certificates that use this template. If the issuing CaPool's IssuancePolicy specifies a maximum lifetime the minimum of the two durations will be the maximum lifetime for issued. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  late final pulumi.Output<String?> maximumLifetime;
  /// The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.
  late final pulumi.Output<String> name;
  /// Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.
  /// Structure is documented below.
  late final pulumi.Output<CertificateTemplatePassthroughExtensions?> passthroughExtensions;
  /// Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail.
  /// Structure is documented below.
  late final pulumi.Output<CertificateTemplatePredefinedValues?> predefinedValues;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Output only. The time at which this CertificateTemplate was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CertificateTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateTemplate]. {@macro pulumi_certificateauthority_certificate_template_certificate_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateTemplate(
    String name, {
    CertificateTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificateauthority/certificateTemplate:CertificateTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.identityConstraints = registerOutput<CertificateTemplateIdentityConstraints?>('identityConstraints');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.maximumLifetime = registerOutput<String?>('maximumLifetime');
    this.name = registerOutput<String>('name');
    this.passthroughExtensions = registerOutput<CertificateTemplatePassthroughExtensions?>('passthroughExtensions');
    this.predefinedValues = registerOutput<CertificateTemplatePredefinedValues?>('predefinedValues');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
