import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_options.dart';
import 'certificate_state.dart';

/// The ACM certificate resource allows requesting and management of certificates
/// from the Amazon Certificate Manager.
///
/// ACM certificates can be created in three ways:
/// Amazon-issued, where AWS provides the certificate authority and automatically manages renewal;
/// imported certificates, issued by another certificate authority;
/// and private certificates, issued using an ACM Private Certificate Authority.
///
///
/// For Amazon-issued certificates, this resource deals with requesting certificates and managing their attributes and life-cycle. It does not wait for a certificate to be issued — use `aws.acm.CertificateValidation` for that. Most commonly used together with `aws.route53.Record` and `aws.acm.CertificateValidation` to request a DNS validated certificate, deploy the required validation records, and wait for validation to complete. It's recommended to specify `createBeforeDestroy = true` in a lifecycle block to replace a certificate which is currently in use (e.g., by `aws.lb.Listener`).
///
/// Imported certificates can be used to make certificates created with an external certificate authority available for AWS services. As they are not managed by AWS, imported certificates are not eligible for automatic renewal. New certificate materials can be supplied to an existing imported certificate to update it in place.
///
/// Private certificates are issued by an ACM Private Certificate Authority, which can be created using `aws.acmpca.CertificateAuthority`. Private certificates created using this resource are eligible for managed renewal if they have been exported or associated with another AWS service. See [managed renewal documentation](https://docs.aws.amazon.com/acm/latest/userguide/managed-renewal.html) for more information. By default, a certificate is valid for 395 days and the managed renewal process will start 60 days before expiration. To renew the certificate earlier than 60 days before expiration, configure `earlyRenewalDuration`.
///
/// ## Example Usage
///
/// ### Custom Domain Validation Options
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cert = new aws.acm.Certificate("cert", {
///     domainName: "testing.example.com",
///     validationMethod: "EMAIL",
///     validationOptions: [{
///         domainName: "testing.example.com",
///         validationDomain: "example.com",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cert = aws.acm.Certificate("cert",
///     domain_name="testing.example.com",
///     validation_method="EMAIL",
///     validation_options=[{
///         "domain_name": "testing.example.com",
///         "validation_domain": "example.com",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cert = new Aws.Acm.Certificate("cert", new()
///     {
///         DomainName = "testing.example.com",
///         ValidationMethod = "EMAIL",
///         ValidationOptions = new[]
///         {
///             new Aws.Acm.Inputs.CertificateValidationOptionArgs
///             {
///                 DomainName = "testing.example.com",
///                 ValidationDomain = "example.com",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := acm.NewCertificate(ctx, "cert", &acm.CertificateArgs{
/// 			DomainName:       pulumi.String("testing.example.com"),
/// 			ValidationMethod: pulumi.String("EMAIL"),
/// 			ValidationOptions: acm.CertificateValidationOptionArray{
/// 				&acm.CertificateValidationOptionArgs{
/// 					DomainName:       pulumi.String("testing.example.com"),
/// 					ValidationDomain: pulumi.String("example.com"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_acm_certificate" "cert" {
///   domain_name       = "testing.example.com"
///   validation_method = "EMAIL"
///   validation_options {
///     domain_name       = "testing.example.com"
///     validation_domain = "example.com"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.acm.Certificate;
/// import com.pulumi.aws.acm.CertificateArgs;
/// import com.pulumi.aws.acm.inputs.CertificateValidationOptionArgs;
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
///         var cert = new Certificate("cert", CertificateArgs.builder()
///             .domainName("testing.example.com")
///             .validationMethod("EMAIL")
///             .validationOptions(CertificateValidationOptionArgs.builder()
///                 .domainName("testing.example.com")
///                 .validationDomain("example.com")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cert:
///     type: aws:acm:Certificate
///     properties:
///       domainName: testing.example.com
///       validationMethod: EMAIL
///       validationOptions:
///         - domainName: testing.example.com
///           validationDomain: example.com
/// ```
///
///
/// ### Existing Certificate Body Import
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as tls from "@pulumi/tls";
///
/// const example = new tls.PrivateKey("example", {algorithm: "RSA"});
/// const exampleSelfSignedCert = new tls.SelfSignedCert("example", {
///     keyAlgorithm: "RSA",
///     privateKeyPem: example.privateKeyPem,
///     subject: [{
///         commonName: "example.com",
///         organization: "ACME Examples, Inc",
///     }],
///     validityPeriodHours: 12,
///     allowedUses: [
///         "key_encipherment",
///         "digital_signature",
///         "server_auth",
///     ],
/// });
/// const cert = new aws.acm.Certificate("cert", {
///     privateKey: example.privateKeyPem,
///     certificateBody: exampleSelfSignedCert.certPem,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_tls as tls
///
/// example = tls.PrivateKey("example", algorithm="RSA")
/// example_self_signed_cert = tls.SelfSignedCert("example",
///     key_algorithm="RSA",
///     private_key_pem=example.private_key_pem,
///     subject=[{
///         "commonName": "example.com",
///         "organization": "ACME Examples, Inc",
///     }],
///     validity_period_hours=12,
///     allowed_uses=[
///         "key_encipherment",
///         "digital_signature",
///         "server_auth",
///     ])
/// cert = aws.acm.Certificate("cert",
///     private_key=example.private_key_pem,
///     certificate_body=example_self_signed_cert.cert_pem)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Tls = Pulumi.Tls;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Tls.PrivateKey("example", new()
///     {
///         Algorithm = "RSA",
///     });
///
///     var exampleSelfSignedCert = new Tls.SelfSignedCert("example", new()
///     {
///         KeyAlgorithm = "RSA",
///         PrivateKeyPem = example.PrivateKeyPem,
///         Subject = new[]
///         {
///
///             {
///                 { "commonName", "example.com" },
///                 { "organization", "ACME Examples, Inc" },
///             },
///         },
///         ValidityPeriodHours = 12,
///         AllowedUses = new[]
///         {
///             "key_encipherment",
///             "digital_signature",
///             "server_auth",
///         },
///     });
///
///     var cert = new Aws.Acm.Certificate("cert", new()
///     {
///         PrivateKey = example.PrivateKeyPem,
///         CertificateBody = exampleSelfSignedCert.CertPem,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acm"
/// 	"github.com/pulumi/pulumi-tls/sdk/v5/go/tls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := tls.NewPrivateKey(ctx, "example", &tls.PrivateKeyArgs{
/// 			Algorithm: pulumi.String("RSA"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSelfSignedCert, err := tls.NewSelfSignedCert(ctx, "example", &tls.SelfSignedCertArgs{
/// 			KeyAlgorithm:  "RSA",
/// 			PrivateKeyPem: example.PrivateKeyPem,
/// 			Subject: tls.SelfSignedCertSubjectArgs{
/// 				map[string]string{
/// 					"commonName":   "example.com",
/// 					"organization": "ACME Examples, Inc",
/// 				},
/// 			},
/// 			ValidityPeriodHours: pulumi.Int(12),
/// 			AllowedUses: pulumi.StringArray{
/// 				pulumi.String("key_encipherment"),
/// 				pulumi.String("digital_signature"),
/// 				pulumi.String("server_auth"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = acm.NewCertificate(ctx, "cert", &acm.CertificateArgs{
/// 			PrivateKey:      example.PrivateKeyPem,
/// 			CertificateBody: exampleSelfSignedCert.CertPem,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     tls = {
///       source = "pulumi/tls"
///     }
///   }
/// }
///
/// resource "tls_privatekey" "example" {
///   algorithm = "RSA"
/// }
/// resource "tls_selfsignedcert" "example" {
///   key_algorithm   = "RSA"
///   private_key_pem = tls_privatekey.example.private_key_pem
///   subject = [{
///     "commonName"   = "example.com"
///     "organization" = "ACME Examples, Inc"
///   }]
///   validity_period_hours = 12
///   allowed_uses          = ["key_encipherment", "digital_signature", "server_auth"]
/// }
/// resource "aws_acm_certificate" "cert" {
///   private_key      = tls_privatekey.example.private_key_pem
///   certificate_body = tls_selfsignedcert.example.cert_pem
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.tls.PrivateKey;
/// import com.pulumi.tls.PrivateKeyArgs;
/// import com.pulumi.tls.SelfSignedCert;
/// import com.pulumi.tls.SelfSignedCertArgs;
/// import com.pulumi.aws.acm.Certificate;
/// import com.pulumi.aws.acm.CertificateArgs;
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
///         var example = new PrivateKey("example", PrivateKeyArgs.builder()
///             .algorithm("RSA")
///             .build());
///
///         var exampleSelfSignedCert = new SelfSignedCert("exampleSelfSignedCert", SelfSignedCertArgs.builder()
///             .keyAlgorithm("RSA")
///             .privateKeyPem(example.privateKeyPem())
///             .subject(com.pulumi.tls.inputs.SelfSignedCertSubjectArgs.builder()
///                 .commonName("example.com")
///                 .organization("ACME Examples, Inc")
///                 .build())
///             .validityPeriodHours(12)
///             .allowedUses(
///                 "key_encipherment",
///                 "digital_signature",
///                 "server_auth")
///             .build());
///
///         var cert = new Certificate("cert", CertificateArgs.builder()
///             .privateKey(example.privateKeyPem())
///             .certificateBody(exampleSelfSignedCert.certPem())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: tls:PrivateKey
///     properties:
///       algorithm: RSA
///   exampleSelfSignedCert:
///     type: tls:SelfSignedCert
///     name: example
///     properties:
///       keyAlgorithm: RSA
///       privateKeyPem: ${example.privateKeyPem}
///       subject:
///         - commonName: example.com
///           organization: ACME Examples, Inc
///       validityPeriodHours: 12
///       allowedUses:
///         - key_encipherment
///         - digital_signature
///         - server_auth
///   cert:
///     type: aws:acm:Certificate
///     properties:
///       privateKey: ${example.privateKeyPem}
///       certificateBody: ${exampleSelfSignedCert.certPem}
/// ```
///
///
/// ### Existing Certificate Body Import With Write-Only Private Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as tls from "@pulumi/tls";
///
/// const example = new tls.PrivateKey("example", {algorithm: "RSA"});
/// const exampleSelfSignedCert = new tls.SelfSignedCert("example", {
///     keyAlgorithm: "RSA",
///     privateKeyPem: example.privateKeyPem,
///     subject: [{
///         commonName: "example.com",
///         organization: "ACME Examples, Inc",
///     }],
///     validityPeriodHours: 12,
///     allowedUses: [
///         "key_encipherment",
///         "digital_signature",
///         "server_auth",
///     ],
/// });
/// const cert = new aws.acm.Certificate("cert", {
///     privateKeyWo: example.privateKeyPem,
///     privateKeyWoVersion: 1,
///     certificateBody: exampleSelfSignedCert.certPem,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_tls as tls
///
/// example = tls.PrivateKey("example", algorithm="RSA")
/// example_self_signed_cert = tls.SelfSignedCert("example",
///     key_algorithm="RSA",
///     private_key_pem=example.private_key_pem,
///     subject=[{
///         "commonName": "example.com",
///         "organization": "ACME Examples, Inc",
///     }],
///     validity_period_hours=12,
///     allowed_uses=[
///         "key_encipherment",
///         "digital_signature",
///         "server_auth",
///     ])
/// cert = aws.acm.Certificate("cert",
///     private_key_wo=example.private_key_pem,
///     private_key_wo_version=1,
///     certificate_body=example_self_signed_cert.cert_pem)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Tls = Pulumi.Tls;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Tls.PrivateKey("example", new()
///     {
///         Algorithm = "RSA",
///     });
///
///     var exampleSelfSignedCert = new Tls.SelfSignedCert("example", new()
///     {
///         KeyAlgorithm = "RSA",
///         PrivateKeyPem = example.PrivateKeyPem,
///         Subject = new[]
///         {
///
///             {
///                 { "commonName", "example.com" },
///                 { "organization", "ACME Examples, Inc" },
///             },
///         },
///         ValidityPeriodHours = 12,
///         AllowedUses = new[]
///         {
///             "key_encipherment",
///             "digital_signature",
///             "server_auth",
///         },
///     });
///
///     var cert = new Aws.Acm.Certificate("cert", new()
///     {
///         PrivateKeyWo = example.PrivateKeyPem,
///         PrivateKeyWoVersion = 1,
///         CertificateBody = exampleSelfSignedCert.CertPem,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acm"
/// 	"github.com/pulumi/pulumi-tls/sdk/v5/go/tls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := tls.NewPrivateKey(ctx, "example", &tls.PrivateKeyArgs{
/// 			Algorithm: pulumi.String("RSA"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSelfSignedCert, err := tls.NewSelfSignedCert(ctx, "example", &tls.SelfSignedCertArgs{
/// 			KeyAlgorithm:  "RSA",
/// 			PrivateKeyPem: example.PrivateKeyPem,
/// 			Subject: tls.SelfSignedCertSubjectArgs{
/// 				map[string]string{
/// 					"commonName":   "example.com",
/// 					"organization": "ACME Examples, Inc",
/// 				},
/// 			},
/// 			ValidityPeriodHours: pulumi.Int(12),
/// 			AllowedUses: pulumi.StringArray{
/// 				pulumi.String("key_encipherment"),
/// 				pulumi.String("digital_signature"),
/// 				pulumi.String("server_auth"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = acm.NewCertificate(ctx, "cert", &acm.CertificateArgs{
/// 			PrivateKeyWo:        example.PrivateKeyPem,
/// 			PrivateKeyWoVersion: pulumi.Int(1),
/// 			CertificateBody:     exampleSelfSignedCert.CertPem,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     tls = {
///       source = "pulumi/tls"
///     }
///   }
/// }
///
/// resource "tls_privatekey" "example" {
///   algorithm = "RSA"
/// }
/// resource "tls_selfsignedcert" "example" {
///   key_algorithm   = "RSA"
///   private_key_pem = tls_privatekey.example.private_key_pem
///   subject = [{
///     "commonName"   = "example.com"
///     "organization" = "ACME Examples, Inc"
///   }]
///   validity_period_hours = 12
///   allowed_uses          = ["key_encipherment", "digital_signature", "server_auth"]
/// }
/// resource "aws_acm_certificate" "cert" {
///   private_key_wo         = tls_privatekey.example.private_key_pem
///   private_key_wo_version = 1
///   certificate_body       = tls_selfsignedcert.example.cert_pem
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.tls.PrivateKey;
/// import com.pulumi.tls.PrivateKeyArgs;
/// import com.pulumi.tls.SelfSignedCert;
/// import com.pulumi.tls.SelfSignedCertArgs;
/// import com.pulumi.aws.acm.Certificate;
/// import com.pulumi.aws.acm.CertificateArgs;
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
///         var example = new PrivateKey("example", PrivateKeyArgs.builder()
///             .algorithm("RSA")
///             .build());
///
///         var exampleSelfSignedCert = new SelfSignedCert("exampleSelfSignedCert", SelfSignedCertArgs.builder()
///             .keyAlgorithm("RSA")
///             .privateKeyPem(example.privateKeyPem())
///             .subject(com.pulumi.tls.inputs.SelfSignedCertSubjectArgs.builder()
///                 .commonName("example.com")
///                 .organization("ACME Examples, Inc")
///                 .build())
///             .validityPeriodHours(12)
///             .allowedUses(
///                 "key_encipherment",
///                 "digital_signature",
///                 "server_auth")
///             .build());
///
///         var cert = new Certificate("cert", CertificateArgs.builder()
///             .privateKeyWo(example.privateKeyPem())
///             .privateKeyWoVersion(1)
///             .certificateBody(exampleSelfSignedCert.certPem())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: tls:PrivateKey
///     properties:
///       algorithm: RSA
///   exampleSelfSignedCert:
///     type: tls:SelfSignedCert
///     name: example
///     properties:
///       keyAlgorithm: RSA
///       privateKeyPem: ${example.privateKeyPem}
///       subject:
///         - commonName: example.com
///           organization: ACME Examples, Inc
///       validityPeriodHours: 12
///       allowedUses:
///         - key_encipherment
///         - digital_signature
///         - server_auth
///   cert:
///     type: aws:acm:Certificate
///     properties:
///       privateKeyWo: ${example.privateKeyPem}
///       privateKeyWoVersion: 1
///       certificateBody: ${exampleSelfSignedCert.certPem}
/// ```
///
///
/// ### Referencing domainValidationOptions With forEach Based Resources
///
/// See the `aws.acm.CertificateValidation` resource for a full example of performing DNS validation.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example: {[key: string]: aws.route53.Record} = {};
/// for (const range of Object.entries(.reduce((__obj, dvo) => ({ ...__obj, [dvo.domainName]: {
///     name: dvo.resourceRecordName,
///     record: dvo.resourceRecordValue,
///     type: dvo.resourceRecordType,
/// } }), {})).sort().map(([k, v]) => ({key: k, value: v}))) {
///     example[range.key] = new aws.route53.Record(`example-${range.key}`, {
///         allowOverwrite: true,
///         name: range.value.name,
///         records: [range.value.record],
///         ttl: 60,
///         type: aws.route53.RecordType[range.value.type],
///         zoneId: exampleAwsRoute53Zone.zoneId,
///     });
/// }
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
///
/// example: dict[str, aws.route53.Record] = {}
/// for example_range in [{"key": k, "value": v} for [k, v] in sorted(({dvo.domain_name: {
///     name: dvo.resource_record_name,
///     record: dvo.resource_record_value,
///     type: dvo.resource_record_type,
/// } for dvo in example_aws_acm_certificate.domain_validation_options}).items())]:
///     example[example_range['key']] = aws.route53.Record(f"example-{example_range['key']}",
///         allow_overwrite=True,
///         name=example_range["value"]["name"],
///         records=[example_range["value"]["record"]],
///         ttl=60,
///         type=aws.route53.RecordType(example_range["value"]["type"]),
///         zone_id=example_aws_route53_zone["zoneId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new List<Aws.Route53.Record>();
///     foreach (var range in .ToDictionary(item => {
///         var dvo = item.Value;
///         return dvo.DomainName;
///     }, item => {
///         var dvo = item.Value;
///         return
///         {
///             { "name", dvo.ResourceRecordName },
///             { "record", dvo.ResourceRecordValue },
///             { "type", dvo.ResourceRecordType },
///         };
///     }).Select(pair => new { pair.Key, pair.Value }))
///     {
///         example.Add(new Aws.Route53.Record($"example-{range.Key}", new()
///         {
///             AllowOverwrite = true,
///             Name = range.Value.Name,
///             Records = new[]
///             {
///                 range.Value.Record,
///             },
///             Ttl = 60,
///             Type = System.Enum.Parse<Aws.Route53.RecordType>(range.Value.Type),
///             ZoneId = exampleAwsRoute53Zone.ZoneId,
///         }));
///     }
/// });
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_route53_record" "example" {
///   for_each = {for dvo in exampleAwsAcmCertificate.domainValidationOptions : dvo.domainName => {
///     "name"   = dvo.resourceRecordName
///     "record" = dvo.resourceRecordValue
///     "type"   = dvo.resourceRecordType
///   } }
///   allow_overwrite = true
///   name            = each.value.name
///   records         = [each.value.record]
///   ttl             = 60
///   type            = each.value.type
///   zone_id         = exampleAwsRoute53Zone.zoneId
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53:Record
///     properties:
///       allowOverwrite: true
///       name: ${range.value.name}
///       records:
///         - ${range.value.record}
///       ttl: 60
///       type: ${range.value.type}
///       zoneId: ${exampleAwsRoute53Zone.zoneId}
///     options: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the certificate.
///
///
/// Using `pulumi import`, import certificates using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:acm/certificate:Certificate example arn:aws:acm:eu-central-1:123456789012:certificate/7e7a28d2-163f-4b8f-b9cd-822f96c08d6a
/// ```
class Certificate extends pulumi.CustomResource {
  /// ARN of the certificate
  late final pulumi.Output<String> arn;
  late final pulumi.Output<String?> certificateAuthorityArn;
  late final pulumi.Output<String?> certificateBody;
  late final pulumi.Output<String?> certificateChain;
  /// Domain to be validated
  late final pulumi.Output<String> domainName;
  /// Set of domain validation objects which can be used to complete certificate validation.
  /// Can have more than one element, e.g., if SANs are defined.
  /// Only set if `DNS`-validation was used.
  late final pulumi.Output<List<Map<String, dynamic>>> domainValidationOptions;
  late final pulumi.Output<String?> earlyRenewalDuration;
  late final pulumi.Output<String> keyAlgorithm;
  /// Expiration date and time of the certificate.
  late final pulumi.Output<String> notAfter;
  /// Start of the validity period of the certificate.
  late final pulumi.Output<String> notBefore;
  late final pulumi.Output<CertificateOptions> options;
  /// `true` if a Private certificate eligible for managed renewal is within the `earlyRenewalDuration` period.
  late final pulumi.Output<bool> pendingRenewal;
  late final pulumi.Output<String?> privateKey;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  late final pulumi.Output<String?> privateKeyWo;
  late final pulumi.Output<int?> privateKeyWoVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// * Creating an Amazon issued certificate
  late final pulumi.Output<String> region;
  /// Whether the certificate is eligible for managed renewal.
  late final pulumi.Output<String> renewalEligibility;
  /// Contains information about the status of ACM's [managed renewal](https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html) for the certificate.
  late final pulumi.Output<List<Map<String, dynamic>>> renewalSummaries;
  /// Status of the certificate.
  late final pulumi.Output<String> status;
  late final pulumi.Output<List<String>> subjectAlternativeNames;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Source of the certificate.
  late final pulumi.Output<String> type;
  /// List of addresses that received a validation email. Only set if `EMAIL` validation was used.
  late final pulumi.Output<List<String>> validationEmails;
  late final pulumi.Output<String> validationMethod;
  late final pulumi.Output<List<Map<String, dynamic>>?> validationOptions;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_acm_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acm/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    certificateAuthorityArn = registerOutput<String?>('certificateAuthorityArn');
    certificateBody = registerOutput<String?>('certificateBody');
    certificateChain = registerOutput<String?>('certificateChain');
    domainName = registerOutput<String>('domainName');
    domainValidationOptions = registerOutput<List<Map<String, dynamic>>>('domainValidationOptions');
    earlyRenewalDuration = registerOutput<String?>('earlyRenewalDuration');
    keyAlgorithm = registerOutput<String>('keyAlgorithm');
    notAfter = registerOutput<String>('notAfter');
    notBefore = registerOutput<String>('notBefore');
    this.options = registerOutput<CertificateOptions>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pendingRenewal = registerOutput<bool>('pendingRenewal');
    privateKey = registerOutput<String?>('privateKey');
    privateKeyWo = registerOutput<String?>('privateKeyWo');
    privateKeyWoVersion = registerOutput<int?>('privateKeyWoVersion');
    region = registerOutput<String>('region');
    renewalEligibility = registerOutput<String>('renewalEligibility');
    renewalSummaries = registerOutput<List<Map<String, dynamic>>>('renewalSummaries');
    status = registerOutput<String>('status');
    subjectAlternativeNames = registerOutput<List<String>>('subjectAlternativeNames');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
    validationEmails = registerOutput<List<String>>('validationEmails');
    validationMethod = registerOutput<String>('validationMethod');
    validationOptions = registerOutput<List<Map<String, dynamic>>?>('validationOptions');
  }

  /// Gets an existing [Certificate] resource's state with the given [name] and [id].
  static Certificate get(
    String name,
    pulumi.Input<String> id, {
    CertificateState? state,
  }) {
    return Certificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Certificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acm/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    certificateAuthorityArn = registerOutput<String?>('certificateAuthorityArn');
    certificateBody = registerOutput<String?>('certificateBody');
    certificateChain = registerOutput<String?>('certificateChain');
    domainName = registerOutput<String>('domainName');
    domainValidationOptions = registerOutput<List<Map<String, dynamic>>>('domainValidationOptions');
    earlyRenewalDuration = registerOutput<String?>('earlyRenewalDuration');
    keyAlgorithm = registerOutput<String>('keyAlgorithm');
    notAfter = registerOutput<String>('notAfter');
    notBefore = registerOutput<String>('notBefore');
    this.options = registerOutput<CertificateOptions>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pendingRenewal = registerOutput<bool>('pendingRenewal');
    privateKey = registerOutput<String?>('privateKey');
    privateKeyWo = registerOutput<String?>('privateKeyWo');
    privateKeyWoVersion = registerOutput<int?>('privateKeyWoVersion');
    region = registerOutput<String>('region');
    renewalEligibility = registerOutput<String>('renewalEligibility');
    renewalSummaries = registerOutput<List<Map<String, dynamic>>>('renewalSummaries');
    status = registerOutput<String>('status');
    subjectAlternativeNames = registerOutput<List<String>>('subjectAlternativeNames');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
    validationEmails = registerOutput<List<String>>('validationEmails');
    validationMethod = registerOutput<String>('validationMethod');
    validationOptions = registerOutput<List<Map<String, dynamic>>?>('validationOptions');
  }
}
