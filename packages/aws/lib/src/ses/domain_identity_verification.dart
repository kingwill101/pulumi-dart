import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_identity_verification_args.dart';

/// Represents a successful verification of an SES domain identity.
///
/// Most commonly, this resource is used together with `aws.route53.Record` and
/// `aws.ses.DomainIdentity` to request an SES domain identity,
/// deploy the required DNS verification records, and wait for verification to complete.
///
/// > **WARNING:** This resource implements a part of the verification workflow. It does not represent a real-world entity in AWS, therefore changing or deleting this resource on its own has no immediate effect.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ses.DomainIdentity("example", {domain: "example.com"});
/// const exampleAmazonsesVerificationRecord = new aws.route53.Record("example_amazonses_verification_record", {
///     zoneId: exampleAwsRoute53Zone.zoneId,
///     name: pulumi.interpolate`_amazonses.${example.domain}`,
///     type: aws.route53.RecordType.TXT,
///     ttl: 600,
///     records: [example.verificationToken],
/// });
/// const exampleVerification = new aws.ses.DomainIdentityVerification("example_verification", {domain: example.domain}, {
///     dependsOn: [exampleAmazonsesVerificationRecord],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ses.DomainIdentity("example", domain="example.com")
/// example_amazonses_verification_record = aws.route53.Record("example_amazonses_verification_record",
///     zone_id=example_aws_route53_zone["zoneId"],
///     name=example.domain.apply(lambda domain: f"_amazonses.{domain}"),
///     type=aws.route53.RecordType.TXT,
///     ttl=600,
///     records=[example.verification_token])
/// example_verification = aws.ses.DomainIdentityVerification("example_verification", domain=example.domain,
/// opts = pulumi.ResourceOptions(depends_on=[example_amazonses_verification_record]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ses.DomainIdentity("example", new()
///     {
///         Domain = "example.com",
///     });
///
///     var exampleAmazonsesVerificationRecord = new Aws.Route53.Record("example_amazonses_verification_record", new()
///     {
///         ZoneId = exampleAwsRoute53Zone.ZoneId,
///         Name = example.Domain.Apply(domain => $"_amazonses.{domain}"),
///         Type = Aws.Route53.RecordType.TXT,
///         Ttl = 600,
///         Records = new[]
///         {
///             example.VerificationToken,
///         },
///     });
///
///     var exampleVerification = new Aws.Ses.DomainIdentityVerification("example_verification", new()
///     {
///         Domain = example.Domain,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAmazonsesVerificationRecord,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ses.NewDomainIdentity(ctx, "example", &ses.DomainIdentityArgs{
/// 			Domain: pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAmazonsesVerificationRecord, err := route53.NewRecord(ctx, "example_amazonses_verification_record", &route53.RecordArgs{
/// 			ZoneId: pulumi.Any(exampleAwsRoute53Zone.ZoneId),
/// 			Name: example.Domain.ApplyT(func(domain string) (string, error) {
/// 				return fmt.Sprintf("_amazonses.%v", domain), nil
/// 			}).(pulumi.StringOutput),
/// 			Type: pulumi.String(route53.RecordTypeTXT),
/// 			Ttl:  pulumi.Int(600),
/// 			Records: pulumi.StringArray{
/// 				example.VerificationToken,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ses.NewDomainIdentityVerification(ctx, "example_verification", &ses.DomainIdentityVerificationArgs{
/// 			Domain: example.Domain,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAmazonsesVerificationRecord,
/// 		}))
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
/// import com.pulumi.aws.ses.DomainIdentity;
/// import com.pulumi.aws.ses.DomainIdentityArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.ses.DomainIdentityVerification;
/// import com.pulumi.aws.ses.DomainIdentityVerificationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new DomainIdentity("example", DomainIdentityArgs.builder()
///             .domain("example.com")
///             .build());
///
///         var exampleAmazonsesVerificationRecord = new Record("exampleAmazonsesVerificationRecord", RecordArgs.builder()
///             .zoneId(exampleAwsRoute53Zone.zoneId())
///             .name(example.domain().applyValue(_domain -> String.format("_amazonses.%s", _domain)))
///             .type("TXT")
///             .ttl(600)
///             .records(example.verificationToken())
///             .build());
///
///         var exampleVerification = new DomainIdentityVerification("exampleVerification", DomainIdentityVerificationArgs.builder()
///             .domain(example.domain())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAmazonsesVerificationRecord)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ses:DomainIdentity
///     properties:
///       domain: example.com
///   exampleAmazonsesVerificationRecord:
///     type: aws:route53:Record
///     name: example_amazonses_verification_record
///     properties:
///       zoneId: ${exampleAwsRoute53Zone.zoneId}
///       name: _amazonses.${example.domain}
///       type: TXT
///       ttl: '600'
///       records:
///         - ${example.verificationToken}
///   exampleVerification:
///     type: aws:ses:DomainIdentityVerification
///     name: example_verification
///     properties:
///       domain: ${example.domain}
///     options:
///       dependsOn:
///         - ${exampleAmazonsesVerificationRecord}
/// ```
class DomainIdentityVerification extends pulumi.CustomResource {
  /// The ARN of the domain identity.
  late final pulumi.Output<String> arn;

  /// The domain name of the SES domain identity to verify.
  late final pulumi.Output<String> domain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DomainIdentityVerification].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainIdentityVerification]. {@macro pulumi_ses_domain_identity_verification_domain_identity_verification_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainIdentityVerification(
    String name, {
    DomainIdentityVerificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/domainIdentityVerification:DomainIdentityVerification',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domain = registerOutput<String>('domain');
    this.region = registerOutput<String>('region');
  }
}
