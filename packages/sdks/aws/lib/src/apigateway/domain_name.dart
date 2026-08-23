import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_name_args.dart';
import 'domain_name_endpoint_configuration.dart';
import 'domain_name_mutual_tls_authentication.dart';
import 'domain_name_state.dart';

/// Registers a custom domain name for use with AWS API Gateway. Additional information about this functionality
/// can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html).
///
/// This resource just establishes ownership of and the TLS settings for
/// a particular domain name. An API can be attached to a particular path
/// under the registered domain name using
/// the `aws.apigateway.BasePathMapping` resource.
///
/// API Gateway domains can be defined as either 'edge-optimized' or 'regional'.  In an edge-optimized configuration,
/// API Gateway internally creates and manages a CloudFront distribution to route requests on the given hostname. In
/// addition to this resource it's necessary to create a DNS record corresponding to the given domain name which is an alias
/// (either Route53 alias or traditional CNAME) to the Cloudfront domain name exported in the `cloudfrontDomainName`
/// attribute.
///
/// In a regional configuration, API Gateway does not create a CloudFront distribution to route requests to the API, though
/// a distribution can be created if needed. In either case, it is necessary to create a DNS record corresponding to the
/// given domain name which is an alias (either Route53 alias or traditional CNAME) to the regional domain name exported in
/// the `regionalDomainName` attribute.
///
/// &gt; **Note:** API Gateway requires the use of AWS Certificate Manager (ACM) certificates instead of Identity and Access Management (IAM) certificates in regions that support ACM. Regions that support ACM can be found in the [Regions and Endpoints Documentation](https://docs.aws.amazon.com/general/latest/gr/rande.html#acm_region). To import an existing private key and certificate into ACM or request an ACM certificate, see the `aws.acm.Certificate` resource.
///
/// &gt; **Note:** The `aws.apigateway.DomainName` resource expects dependency on the `aws.acm.CertificateValidation` as
/// only verified certificates can be used. This can be made either explicitly by adding the
/// `dependsOn = [aws_acm_certificate_validation.cert]` attribute. Or implicitly by referring certificate ARN
/// from the validation resource where it will be available after the resource creation:
/// `regionalCertificateArn = aws_acm_certificate_validation.cert.certificate_arn`.
///
/// ## Example Usage
///
/// ### Edge Optimized (ACM Certificate)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigateway.DomainName("example", {
///     certificateArn: exampleAwsAcmCertificateValidation.certificateArn,
///     domainName: "api.example.com",
/// });
/// // Example DNS record using Route53.
/// // Route53 is not specifically required; any DNS host can be used.
/// const exampleRecord = new aws.route53.Record("example", {
///     name: example.domainName,
///     type: aws.route53.RecordType.A,
///     zoneId: exampleAwsRoute53Zone.id,
///     aliases: [{
///         evaluateTargetHealth: true,
///         name: example.cloudfrontDomainName,
///         zoneId: example.cloudfrontZoneId,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.DomainName("example",
///     certificate_arn=example_aws_acm_certificate_validation["certificateArn"],
///     domain_name="api.example.com")
/// # Example DNS record using Route53.
/// # Route53 is not specifically required; any DNS host can be used.
/// example_record = aws.route53.Record("example",
///     name=example.domain_name,
///     type=aws.route53.RecordType.A,
///     zone_id=example_aws_route53_zone["id"],
///     aliases=[{
///         "evaluate_target_health": True,
///         "name": example.cloudfront_domain_name,
///         "zone_id": example.cloudfront_zone_id,
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
///     var example = new Aws.ApiGateway.DomainName("example", new()
///     {
///         CertificateArn = exampleAwsAcmCertificateValidation.CertificateArn,
///         Domain = "api.example.com",
///     });
///
///     // Example DNS record using Route53.
///     // Route53 is not specifically required; any DNS host can be used.
///     var exampleRecord = new Aws.Route53.Record("example", new()
///     {
///         Name = example.Domain,
///         Type = Aws.Route53.RecordType.A,
///         ZoneId = exampleAwsRoute53Zone.Id,
///         Aliases = new[]
///         {
///             new Aws.Route53.Inputs.RecordAliasArgs
///             {
///                 EvaluateTargetHealth = true,
///                 Name = example.CloudfrontDomainName,
///                 ZoneId = example.CloudfrontZoneId,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := apigateway.NewDomainName(ctx, "example", &apigateway.DomainNameArgs{
/// 			CertificateArn: pulumi.Any(exampleAwsAcmCertificateValidation.CertificateArn),
/// 			DomainName:     pulumi.String("api.example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example DNS record using Route53.
/// 		// Route53 is not specifically required; any DNS host can be used.
/// 		_, err = route53.NewRecord(ctx, "example", &route53.RecordArgs{
/// 			Name:   example.DomainName,
/// 			Type:   pulumi.String(route53.RecordTypeA),
/// 			ZoneId: pulumi.Any(exampleAwsRoute53Zone.Id),
/// 			Aliases: route53.RecordAliasArray{
/// 				&route53.RecordAliasArgs{
/// 					EvaluateTargetHealth: pulumi.Bool(true),
/// 					Name:                 example.CloudfrontDomainName,
/// 					ZoneId:               example.CloudfrontZoneId,
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
/// resource "aws_apigateway_domainname" "example" {
///   certificate_arn = exampleAwsAcmCertificateValidation.certificateArn
///   domain_name     = "api.example.com"
/// }
/// # Example DNS record using Route53.
/// # Route53 is not specifically required; any DNS host can be used.
/// resource "aws_route53_record" "example" {
///   name    = aws_apigateway_domainname.example.domain_name
///   type    = "A"
///   zone_id = exampleAwsRoute53Zone.id
///   aliases {
///     evaluate_target_health = true
///     name                   = aws_apigateway_domainname.example.cloudfront_domain_name
///     zone_id                = aws_apigateway_domainname.example.cloudfront_zone_id
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.DomainName;
/// import com.pulumi.aws.apigateway.DomainNameArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.route53.inputs.RecordAliasArgs;
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
///         var example = new DomainName("example", DomainNameArgs.builder()
///             .certificateArn(exampleAwsAcmCertificateValidation.certificateArn())
///             .domainName("api.example.com")
///             .build());
///
///         // Example DNS record using Route53.
///         // Route53 is not specifically required; any DNS host can be used.
///         var exampleRecord = new Record("exampleRecord", RecordArgs.builder()
///             .name(example.domainName())
///             .type("A")
///             .zoneId(exampleAwsRoute53Zone.id())
///             .aliases(RecordAliasArgs.builder()
///                 .evaluateTargetHealth(true)
///                 .name(example.cloudfrontDomainName())
///                 .zoneId(example.cloudfrontZoneId())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigateway:DomainName
///     properties:
///       certificateArn: ${exampleAwsAcmCertificateValidation.certificateArn}
///       domainName: api.example.com
///   # Example DNS record using Route53.
///   # Route53 is not specifically required; any DNS host can be used.
///   exampleRecord:
///     type: aws:route53:Record
///     name: example
///     properties:
///       name: ${example.domainName}
///       type: A
///       zoneId: ${exampleAwsRoute53Zone.id}
///       aliases:
///         - evaluateTargetHealth: true
///           name: ${example.cloudfrontDomainName}
///           zoneId: ${example.cloudfrontZoneId}
/// ```
///
///
/// ### Regional (ACM Certificate)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigateway.DomainName("example", {
///     domainName: "api.example.com",
///     regionalCertificateArn: exampleAwsAcmCertificateValidation.certificateArn,
///     endpointConfiguration: {
///         types: "REGIONAL",
///     },
/// });
/// // Example DNS record using Route53.
/// // Route53 is not specifically required; any DNS host can be used.
/// const exampleRecord = new aws.route53.Record("example", {
///     name: example.domainName,
///     type: aws.route53.RecordType.A,
///     zoneId: exampleAwsRoute53Zone.id,
///     aliases: [{
///         evaluateTargetHealth: true,
///         name: example.regionalDomainName,
///         zoneId: example.regionalZoneId,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.DomainName("example",
///     domain_name="api.example.com",
///     regional_certificate_arn=example_aws_acm_certificate_validation["certificateArn"],
///     endpoint_configuration={
///         "types": "REGIONAL",
///     })
/// # Example DNS record using Route53.
/// # Route53 is not specifically required; any DNS host can be used.
/// example_record = aws.route53.Record("example",
///     name=example.domain_name,
///     type=aws.route53.RecordType.A,
///     zone_id=example_aws_route53_zone["id"],
///     aliases=[{
///         "evaluate_target_health": True,
///         "name": example.regional_domain_name,
///         "zone_id": example.regional_zone_id,
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
///     var example = new Aws.ApiGateway.DomainName("example", new()
///     {
///         Domain = "api.example.com",
///         RegionalCertificateArn = exampleAwsAcmCertificateValidation.CertificateArn,
///         EndpointConfiguration = new Aws.ApiGateway.Inputs.DomainNameEndpointConfigurationArgs
///         {
///             Types = "REGIONAL",
///         },
///     });
///
///     // Example DNS record using Route53.
///     // Route53 is not specifically required; any DNS host can be used.
///     var exampleRecord = new Aws.Route53.Record("example", new()
///     {
///         Name = example.Domain,
///         Type = Aws.Route53.RecordType.A,
///         ZoneId = exampleAwsRoute53Zone.Id,
///         Aliases = new[]
///         {
///             new Aws.Route53.Inputs.RecordAliasArgs
///             {
///                 EvaluateTargetHealth = true,
///                 Name = example.RegionalDomainName,
///                 ZoneId = example.RegionalZoneId,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := apigateway.NewDomainName(ctx, "example", &apigateway.DomainNameArgs{
/// 			DomainName:             pulumi.String("api.example.com"),
/// 			RegionalCertificateArn: pulumi.Any(exampleAwsAcmCertificateValidation.CertificateArn),
/// 			EndpointConfiguration: &apigateway.DomainNameEndpointConfigurationArgs{
/// 				Types: pulumi.String("REGIONAL"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example DNS record using Route53.
/// 		// Route53 is not specifically required; any DNS host can be used.
/// 		_, err = route53.NewRecord(ctx, "example", &route53.RecordArgs{
/// 			Name:   example.DomainName,
/// 			Type:   pulumi.String(route53.RecordTypeA),
/// 			ZoneId: pulumi.Any(exampleAwsRoute53Zone.Id),
/// 			Aliases: route53.RecordAliasArray{
/// 				&route53.RecordAliasArgs{
/// 					EvaluateTargetHealth: pulumi.Bool(true),
/// 					Name:                 example.RegionalDomainName,
/// 					ZoneId:               example.RegionalZoneId,
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
/// resource "aws_apigateway_domainname" "example" {
///   domain_name              = "api.example.com"
///   regional_certificate_arn = exampleAwsAcmCertificateValidation.certificateArn
///   endpoint_configuration = {
///     types = "REGIONAL"
///   }
/// }
/// # Example DNS record using Route53.
/// # Route53 is not specifically required; any DNS host can be used.
/// resource "aws_route53_record" "example" {
///   name    = aws_apigateway_domainname.example.domain_name
///   type    = "A"
///   zone_id = exampleAwsRoute53Zone.id
///   aliases {
///     evaluate_target_health = true
///     name                   = aws_apigateway_domainname.example.regional_domain_name
///     zone_id                = aws_apigateway_domainname.example.regional_zone_id
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.DomainName;
/// import com.pulumi.aws.apigateway.DomainNameArgs;
/// import com.pulumi.aws.apigateway.inputs.DomainNameEndpointConfigurationArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.route53.inputs.RecordAliasArgs;
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
///         var example = new DomainName("example", DomainNameArgs.builder()
///             .domainName("api.example.com")
///             .regionalCertificateArn(exampleAwsAcmCertificateValidation.certificateArn())
///             .endpointConfiguration(DomainNameEndpointConfigurationArgs.builder()
///                 .types("REGIONAL")
///                 .build())
///             .build());
///
///         // Example DNS record using Route53.
///         // Route53 is not specifically required; any DNS host can be used.
///         var exampleRecord = new Record("exampleRecord", RecordArgs.builder()
///             .name(example.domainName())
///             .type("A")
///             .zoneId(exampleAwsRoute53Zone.id())
///             .aliases(RecordAliasArgs.builder()
///                 .evaluateTargetHealth(true)
///                 .name(example.regionalDomainName())
///                 .zoneId(example.regionalZoneId())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigateway:DomainName
///     properties:
///       domainName: api.example.com
///       regionalCertificateArn: ${exampleAwsAcmCertificateValidation.certificateArn}
///       endpointConfiguration:
///         types: REGIONAL
///   # Example DNS record using Route53.
///   # Route53 is not specifically required; any DNS host can be used.
///   exampleRecord:
///     type: aws:route53:Record
///     name: example
///     properties:
///       name: ${example.domainName}
///       type: A
///       zoneId: ${exampleAwsRoute53Zone.id}
///       aliases:
///         - evaluateTargetHealth: true
///           name: ${example.regionalDomainName}
///           zoneId: ${example.regionalZoneId}
/// ```
///
///
/// ### Enhanced Security Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigateway.DomainName("example", {
///     domainName: "api.example.com",
///     regionalCertificateArn: exampleAwsAcmCertificateValidation.certificateArn,
///     securityPolicy: "SecurityPolicy_TLS13_1_3_2025_09",
///     endpointAccessMode: "STRICT",
///     endpointConfiguration: {
///         types: "REGIONAL",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.DomainName("example",
///     domain_name="api.example.com",
///     regional_certificate_arn=example_aws_acm_certificate_validation["certificateArn"],
///     security_policy="SecurityPolicy_TLS13_1_3_2025_09",
///     endpoint_access_mode="STRICT",
///     endpoint_configuration={
///         "types": "REGIONAL",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGateway.DomainName("example", new()
///     {
///         Domain = "api.example.com",
///         RegionalCertificateArn = exampleAwsAcmCertificateValidation.CertificateArn,
///         SecurityPolicy = "SecurityPolicy_TLS13_1_3_2025_09",
///         EndpointAccessMode = "STRICT",
///         EndpointConfiguration = new Aws.ApiGateway.Inputs.DomainNameEndpointConfigurationArgs
///         {
///             Types = "REGIONAL",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewDomainName(ctx, "example", &apigateway.DomainNameArgs{
/// 			DomainName:             pulumi.String("api.example.com"),
/// 			RegionalCertificateArn: pulumi.Any(exampleAwsAcmCertificateValidation.CertificateArn),
/// 			SecurityPolicy:         pulumi.String("SecurityPolicy_TLS13_1_3_2025_09"),
/// 			EndpointAccessMode:     pulumi.String("STRICT"),
/// 			EndpointConfiguration: &apigateway.DomainNameEndpointConfigurationArgs{
/// 				Types: pulumi.String("REGIONAL"),
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
/// resource "aws_apigateway_domainname" "example" {
///   domain_name              = "api.example.com"
///   regional_certificate_arn = exampleAwsAcmCertificateValidation.certificateArn
///   security_policy          = "SecurityPolicy_TLS13_1_3_2025_09"
///   endpoint_access_mode     = "STRICT"
///   endpoint_configuration = {
///     types = "REGIONAL"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.DomainName;
/// import com.pulumi.aws.apigateway.DomainNameArgs;
/// import com.pulumi.aws.apigateway.inputs.DomainNameEndpointConfigurationArgs;
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
///         var example = new DomainName("example", DomainNameArgs.builder()
///             .domainName("api.example.com")
///             .regionalCertificateArn(exampleAwsAcmCertificateValidation.certificateArn())
///             .securityPolicy("SecurityPolicy_TLS13_1_3_2025_09")
///             .endpointAccessMode("STRICT")
///             .endpointConfiguration(DomainNameEndpointConfigurationArgs.builder()
///                 .types("REGIONAL")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigateway:DomainName
///     properties:
///       domainName: api.example.com
///       regionalCertificateArn: ${exampleAwsAcmCertificateValidation.certificateArn}
///       securityPolicy: SecurityPolicy_TLS13_1_3_2025_09
///       endpointAccessMode: STRICT
///       endpointConfiguration:
///         types: REGIONAL
/// ```
///
///
/// ## Import
///
/// For a private custom domain name:
///
///
/// Using `pulumi import`, import API Gateway domain names using their `name` or `name` and `domainNameId` (for private custom domain names). For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/domainName:DomainName example dev.example.com
/// ```
///
/// For a private custom domain name:
///
/// ```sh
/// $ pulumi import aws:apigateway/domainName:DomainName example dev.api.internal.example.com/abcde12345
/// ```
class DomainName extends pulumi.CustomResource {
  /// ARN of domain name.
  late final pulumi.Output<String> arn;
  /// ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when an edge-optimized domain name is desired. Conflicts with `certificateName`, `certificateBody`, `certificateChain`, `certificatePrivateKey`, `regionalCertificateArn`, and `regionalCertificateName`.
  late final pulumi.Output<String?> certificateArn;
  /// Certificate issued for the domain name being registered, in PEM format. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificateArn`, `regionalCertificateArn`, and `regionalCertificateName`.
  late final pulumi.Output<String?> certificateBody;
  /// Certificate for the CA that issued the certificate, along with any intermediate CA certificates required to create an unbroken chain to a certificate trusted by the intended API clients. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificateArn`, `regionalCertificateArn`, and `regionalCertificateName`.
  late final pulumi.Output<String?> certificateChain;
  /// Unique name to use when registering this certificate as an IAM server certificate. Conflicts with `certificateArn`, `regionalCertificateArn`, and `regionalCertificateName`. Required if `certificateArn` is not set.
  late final pulumi.Output<String?> certificateName;
  /// Private key associated with the domain certificate given in `certificateBody`. Only valid for `EDGE` endpoint configuration type. Conflicts with `certificateArn`, `regionalCertificateArn`, and `regionalCertificateName`.
  late final pulumi.Output<String?> certificatePrivateKey;
  /// Upload date associated with the domain certificate.
  late final pulumi.Output<String> certificateUploadDate;
  /// Hostname created by Cloudfront to represent the distribution that implements this domain name mapping.
  late final pulumi.Output<String> cloudfrontDomainName;
  /// For convenience, the hosted zone ID (`Z2FDTNDATAQYW2`) that can be used to create a Route53 alias record for the distribution.
  late final pulumi.Output<String> cloudfrontZoneId;
  /// Fully-qualified domain name to register.
  late final pulumi.Output<String> domainName;
  /// Identifier for the domain name resource. Supported only for private custom domain names.
  late final pulumi.Output<String> domainNameId;
  /// Endpoint access mode of the DomainName. Only available for domain names that use security policies that start with `SecurityPolicy_`. Valid values: `BASIC`, `STRICT`.
  late final pulumi.Output<String?> endpointAccessMode;
  /// Configuration block defining API endpoint information including type. See below.
  late final pulumi.Output<DomainNameEndpointConfiguration> endpointConfiguration;
  /// Mutual TLS authentication configuration for the domain name. See below.
  late final pulumi.Output<DomainNameMutualTlsAuthentication?> mutualTlsAuthentication;
  /// ARN of the AWS-issued certificate used to validate custom domain ownership (when `certificateArn` is issued via an ACM Private CA or `mutualTlsAuthentication` is configured with an ACM-imported certificate.)
  late final pulumi.Output<String> ownershipVerificationCertificateArn;
  /// Stringified JSON policy document that applies to the execute-api service for this DomainName regardless of the caller and Method configuration. Supported only for private custom domain names.
  late final pulumi.Output<String?> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN for an AWS-managed certificate. AWS Certificate Manager is the only supported source. Used when a regional domain name is desired. Conflicts with `certificateArn`, `certificateName`, `certificateBody`, `certificateChain`, and `certificatePrivateKey`.
  late final pulumi.Output<String?> regionalCertificateArn;
  /// User-friendly name of the certificate that will be used by regional endpoint for this domain name. Conflicts with `certificateArn`, `certificateName`, `certificateBody`, `certificateChain`, and `certificatePrivateKey`.
  late final pulumi.Output<String?> regionalCertificateName;
  /// Hostname for the custom domain's regional endpoint.
  late final pulumi.Output<String> regionalDomainName;
  /// Hosted zone ID that can be used to create a Route53 alias record for the regional endpoint.
  late final pulumi.Output<String> regionalZoneId;
  /// Mode to route traffic for the domain name. Valid values: `BASE_PATH_MAPPING_ONLY`, `ROUTING_RULE_ONLY`, `ROUTING_RULE_THEN_BASE_PATH_MAPPING`.
  late final pulumi.Output<String> routingMode;
  /// Transport Layer Security (TLS) version + cipher suite for this DomainName. Must be configured to perform drift detection. For a list of valid security policies, see [DomainName](https://docs.aws.amazon.com/apigateway/latest/api/API_DomainName.html) in the Amazon API Gateway API Reference.
  late final pulumi.Output<String> securityPolicy;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DomainName].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainName]. {@macro pulumi_apigateway_domain_name_domain_name_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainName(
    String name, {
    DomainNameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/domainName:DomainName',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    certificateArn = registerOutput<String?>('certificateArn');
    certificateBody = registerOutput<String?>('certificateBody');
    certificateChain = registerOutput<String?>('certificateChain');
    certificateName = registerOutput<String?>('certificateName');
    certificatePrivateKey = registerOutput<String?>('certificatePrivateKey');
    certificateUploadDate = registerOutput<String>('certificateUploadDate');
    cloudfrontDomainName = registerOutput<String>('cloudfrontDomainName');
    cloudfrontZoneId = registerOutput<String>('cloudfrontZoneId');
    domainName = registerOutput<String>('domainName');
    domainNameId = registerOutput<String>('domainNameId');
    endpointAccessMode = registerOutput<String?>('endpointAccessMode');
    endpointConfiguration = registerOutput<DomainNameEndpointConfiguration>('endpointConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainNameEndpointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mutualTlsAuthentication = registerOutput<DomainNameMutualTlsAuthentication?>('mutualTlsAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainNameMutualTlsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ownershipVerificationCertificateArn = registerOutput<String>('ownershipVerificationCertificateArn');
    policy = registerOutput<String?>('policy');
    region = registerOutput<String>('region');
    regionalCertificateArn = registerOutput<String?>('regionalCertificateArn');
    regionalCertificateName = registerOutput<String?>('regionalCertificateName');
    regionalDomainName = registerOutput<String>('regionalDomainName');
    regionalZoneId = registerOutput<String>('regionalZoneId');
    routingMode = registerOutput<String>('routingMode');
    securityPolicy = registerOutput<String>('securityPolicy');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [DomainName] resource's state with the given [name] and [id].
  static DomainName get(
    String name,
    pulumi.Input<String> id, {
    DomainNameState? state,
  }) {
    return DomainName._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DomainName._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/domainName:DomainName',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    certificateArn = registerOutput<String?>('certificateArn');
    certificateBody = registerOutput<String?>('certificateBody');
    certificateChain = registerOutput<String?>('certificateChain');
    certificateName = registerOutput<String?>('certificateName');
    certificatePrivateKey = registerOutput<String?>('certificatePrivateKey');
    certificateUploadDate = registerOutput<String>('certificateUploadDate');
    cloudfrontDomainName = registerOutput<String>('cloudfrontDomainName');
    cloudfrontZoneId = registerOutput<String>('cloudfrontZoneId');
    domainName = registerOutput<String>('domainName');
    domainNameId = registerOutput<String>('domainNameId');
    endpointAccessMode = registerOutput<String?>('endpointAccessMode');
    endpointConfiguration = registerOutput<DomainNameEndpointConfiguration>('endpointConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainNameEndpointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mutualTlsAuthentication = registerOutput<DomainNameMutualTlsAuthentication?>('mutualTlsAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainNameMutualTlsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ownershipVerificationCertificateArn = registerOutput<String>('ownershipVerificationCertificateArn');
    policy = registerOutput<String?>('policy');
    region = registerOutput<String>('region');
    regionalCertificateArn = registerOutput<String?>('regionalCertificateArn');
    regionalCertificateName = registerOutput<String?>('regionalCertificateName');
    regionalDomainName = registerOutput<String>('regionalDomainName');
    regionalZoneId = registerOutput<String>('regionalZoneId');
    routingMode = registerOutput<String>('routingMode');
    securityPolicy = registerOutput<String>('securityPolicy');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
