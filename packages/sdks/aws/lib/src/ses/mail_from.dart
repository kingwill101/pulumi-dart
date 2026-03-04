import 'package:pulumi/pulumi.dart' as pulumi;
import 'mail_from_args.dart';
import 'mail_from_state.dart';

/// Provides an SES domain MAIL FROM resource.
///
/// &gt; **NOTE:** For the MAIL FROM domain to be fully usable, this resource should be paired with the aws.ses.DomainIdentity resource. To validate the MAIL FROM domain, a DNS MX record is required. To pass SPF checks, a DNS TXT record may also be required. See the [Amazon SES MAIL FROM documentation](https://docs.aws.amazon.com/ses/latest/dg/mail-from.html) for more information.
///
/// ## Example Usage
///
/// ### Domain Identity MAIL FROM
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Example SES Domain Identity
/// const exampleDomainIdentity = new aws.ses.DomainIdentity("example", {domain: "example.com"});
/// const example = new aws.ses.MailFrom("example", {
///     domain: exampleDomainIdentity.domain,
///     mailFromDomain: pulumi.interpolate`bounce.${exampleDomainIdentity.domain}`,
/// });
/// // Example Route53 MX record
/// const exampleSesDomainMailFromMx = new aws.route53.Record("example_ses_domain_mail_from_mx", {
///     zoneId: exampleAwsRoute53Zone.id,
///     name: example.mailFromDomain,
///     type: aws.route53.RecordType.MX,
///     ttl: 600,
///     records: ["10 feedback-smtp.us-east-1.amazonses.com"],
/// });
/// // Example Route53 TXT record for SPF
/// const exampleSesDomainMailFromTxt = new aws.route53.Record("example_ses_domain_mail_from_txt", {
///     zoneId: exampleAwsRoute53Zone.id,
///     name: example.mailFromDomain,
///     type: aws.route53.RecordType.TXT,
///     ttl: 600,
///     records: ["v=spf1 include:amazonses.com ~all"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Example SES Domain Identity
/// example_domain_identity = aws.ses.DomainIdentity("example", domain="example.com")
/// example = aws.ses.MailFrom("example",
///     domain=example_domain_identity.domain,
///     mail_from_domain=example_domain_identity.domain.apply(lambda domain: f"bounce.{domain}"))
/// # Example Route53 MX record
/// example_ses_domain_mail_from_mx = aws.route53.Record("example_ses_domain_mail_from_mx",
///     zone_id=example_aws_route53_zone["id"],
///     name=example.mail_from_domain,
///     type=aws.route53.RecordType.MX,
///     ttl=600,
///     records=["10 feedback-smtp.us-east-1.amazonses.com"])
/// # Example Route53 TXT record for SPF
/// example_ses_domain_mail_from_txt = aws.route53.Record("example_ses_domain_mail_from_txt",
///     zone_id=example_aws_route53_zone["id"],
///     name=example.mail_from_domain,
///     type=aws.route53.RecordType.TXT,
///     ttl=600,
///     records=["v=spf1 include:amazonses.com ~all"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Example SES Domain Identity
///     var exampleDomainIdentity = new Aws.Ses.DomainIdentity("example", new()
///     {
///         Domain = "example.com",
///     });
///
///     var example = new Aws.Ses.MailFrom("example", new()
///     {
///         Domain = exampleDomainIdentity.Domain,
///         MailFromDomain = exampleDomainIdentity.Domain.Apply(domain => $"bounce.{domain}"),
///     });
///
///     // Example Route53 MX record
///     var exampleSesDomainMailFromMx = new Aws.Route53.Record("example_ses_domain_mail_from_mx", new()
///     {
///         ZoneId = exampleAwsRoute53Zone.Id,
///         Name = example.MailFromDomain,
///         Type = Aws.Route53.RecordType.MX,
///         Ttl = 600,
///         Records = new[]
///         {
///             "10 feedback-smtp.us-east-1.amazonses.com",
///         },
///     });
///
///     // Example Route53 TXT record for SPF
///     var exampleSesDomainMailFromTxt = new Aws.Route53.Record("example_ses_domain_mail_from_txt", new()
///     {
///         ZoneId = exampleAwsRoute53Zone.Id,
///         Name = example.MailFromDomain,
///         Type = Aws.Route53.RecordType.TXT,
///         Ttl = 600,
///         Records = new[]
///         {
///             "v=spf1 include:amazonses.com ~all",
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
/// 		// Example SES Domain Identity
/// 		exampleDomainIdentity, err := ses.NewDomainIdentity(ctx, "example", &ses.DomainIdentityArgs{
/// 			Domain: pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := ses.NewMailFrom(ctx, "example", &ses.MailFromArgs{
/// 			Domain: exampleDomainIdentity.Domain,
/// 			MailFromDomain: exampleDomainIdentity.Domain.ApplyT(func(domain string) (string, error) {
/// 				return fmt.Sprintf("bounce.%v", domain), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example Route53 MX record
/// 		_, err = route53.NewRecord(ctx, "example_ses_domain_mail_from_mx", &route53.RecordArgs{
/// 			ZoneId: pulumi.Any(exampleAwsRoute53Zone.Id),
/// 			Name:   example.MailFromDomain,
/// 			Type:   pulumi.String(route53.RecordTypeMX),
/// 			Ttl:    pulumi.Int(600),
/// 			Records: pulumi.StringArray{
/// 				pulumi.String("10 feedback-smtp.us-east-1.amazonses.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example Route53 TXT record for SPF
/// 		_, err = route53.NewRecord(ctx, "example_ses_domain_mail_from_txt", &route53.RecordArgs{
/// 			ZoneId: pulumi.Any(exampleAwsRoute53Zone.Id),
/// 			Name:   example.MailFromDomain,
/// 			Type:   pulumi.String(route53.RecordTypeTXT),
/// 			Ttl:    pulumi.Int(600),
/// 			Records: pulumi.StringArray{
/// 				pulumi.String("v=spf1 include:amazonses.com ~all"),
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
/// import com.pulumi.aws.ses.DomainIdentity;
/// import com.pulumi.aws.ses.DomainIdentityArgs;
/// import com.pulumi.aws.ses.MailFrom;
/// import com.pulumi.aws.ses.MailFromArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
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
///         // Example SES Domain Identity
///         var exampleDomainIdentity = new DomainIdentity("exampleDomainIdentity", DomainIdentityArgs.builder()
///             .domain("example.com")
///             .build());
///
///         var example = new MailFrom("example", MailFromArgs.builder()
///             .domain(exampleDomainIdentity.domain())
///             .mailFromDomain(exampleDomainIdentity.domain().applyValue(_domain -> String.format("bounce.%s", _domain)))
///             .build());
///
///         // Example Route53 MX record
///         var exampleSesDomainMailFromMx = new Record("exampleSesDomainMailFromMx", RecordArgs.builder()
///             .zoneId(exampleAwsRoute53Zone.id())
///             .name(example.mailFromDomain())
///             .type("MX")
///             .ttl(600)
///             .records("10 feedback-smtp.us-east-1.amazonses.com")
///             .build());
///
///         // Example Route53 TXT record for SPF
///         var exampleSesDomainMailFromTxt = new Record("exampleSesDomainMailFromTxt", RecordArgs.builder()
///             .zoneId(exampleAwsRoute53Zone.id())
///             .name(example.mailFromDomain())
///             .type("TXT")
///             .ttl(600)
///             .records("v=spf1 include:amazonses.com ~all")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ses:MailFrom
///     properties:
///       domain: ${exampleDomainIdentity.domain}
///       mailFromDomain: bounce.${exampleDomainIdentity.domain}
///   # Example SES Domain Identity
///   exampleDomainIdentity:
///     type: aws:ses:DomainIdentity
///     name: example
///     properties:
///       domain: example.com
///   # Example Route53 MX record
///   exampleSesDomainMailFromMx:
///     type: aws:route53:Record
///     name: example_ses_domain_mail_from_mx
///     properties:
///       zoneId: ${exampleAwsRoute53Zone.id}
///       name: ${example.mailFromDomain}
///       type: MX
///       ttl: '600'
///       records: # Change to the region in which `aws_ses_domain_identity.example` is created
///         - 10 feedback-smtp.us-east-1.amazonses.com
///   # Example Route53 TXT record for SPF
///   exampleSesDomainMailFromTxt:
///     type: aws:route53:Record
///     name: example_ses_domain_mail_from_txt
///     properties:
///       zoneId: ${exampleAwsRoute53Zone.id}
///       name: ${example.mailFromDomain}
///       type: TXT
///       ttl: '600'
///       records:
///         - v=spf1 include:amazonses.com ~all
/// ```
///
///
/// ### Email Identity MAIL FROM
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Example SES Email Identity
/// const example = new aws.ses.EmailIdentity("example", {email: "user@example.com"});
/// const exampleMailFrom = new aws.ses.MailFrom("example", {
///     domain: example.email,
///     mailFromDomain: "mail.example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Example SES Email Identity
/// example = aws.ses.EmailIdentity("example", email="user@example.com")
/// example_mail_from = aws.ses.MailFrom("example",
///     domain=example.email,
///     mail_from_domain="mail.example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Example SES Email Identity
///     var example = new Aws.Ses.EmailIdentity("example", new()
///     {
///         Email = "user@example.com",
///     });
///
///     var exampleMailFrom = new Aws.Ses.MailFrom("example", new()
///     {
///         Domain = example.Email,
///         MailFromDomain = "mail.example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Example SES Email Identity
/// 		example, err := ses.NewEmailIdentity(ctx, "example", &ses.EmailIdentityArgs{
/// 			Email: pulumi.String("user@example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ses.NewMailFrom(ctx, "example", &ses.MailFromArgs{
/// 			Domain:         example.Email,
/// 			MailFromDomain: pulumi.String("mail.example.com"),
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
/// import com.pulumi.aws.ses.EmailIdentity;
/// import com.pulumi.aws.ses.EmailIdentityArgs;
/// import com.pulumi.aws.ses.MailFrom;
/// import com.pulumi.aws.ses.MailFromArgs;
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
///         // Example SES Email Identity
///         var example = new EmailIdentity("example", EmailIdentityArgs.builder()
///             .email("user@example.com")
///             .build());
///
///         var exampleMailFrom = new MailFrom("exampleMailFrom", MailFromArgs.builder()
///             .domain(example.email())
///             .mailFromDomain("mail.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Example SES Email Identity
///   example:
///     type: aws:ses:EmailIdentity
///     properties:
///       email: user@example.com
///   exampleMailFrom:
///     type: aws:ses:MailFrom
///     name: example
///     properties:
///       domain: ${example.email}
///       mailFromDomain: mail.example.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import MAIL FROM domain using the `domain` attribute. For example:
///
/// ```sh
/// $ pulumi import aws:ses/mailFrom:MailFrom example example.com
/// ```
class MailFrom extends pulumi.CustomResource {
  /// The action that you want Amazon SES to take if it cannot successfully read the required MX record when you send an email. Defaults to `UseDefaultValue`. See the [SES API documentation](https://docs.aws.amazon.com/ses/latest/APIReference/API_SetIdentityMailFromDomain.html) for more information.
  late final pulumi.Output<String?> behaviorOnMxFailure;

  /// Verified domain name or email identity to generate DKIM tokens for.
  late final pulumi.Output<String> domain;

  /// Subdomain (of above domain) which is to be used as MAIL FROM address (Required for DMARC validation)
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> mailFromDomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [MailFrom].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MailFrom]. {@macro pulumi_ses_mail_from_mail_from_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MailFrom(
    String name, {
    MailFromArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ses/mailFrom:MailFrom',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    behaviorOnMxFailure = registerOutput<String?>('behaviorOnMxFailure');
    domain = registerOutput<String>('domain');
    mailFromDomain = registerOutput<String>('mailFromDomain');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [MailFrom] resource's state with the given [name] and [id].
  static MailFrom get(
    String name,
    pulumi.Input<String> id, {
    MailFromState? state,
  }) {
    return MailFrom._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MailFrom._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ses/mailFrom:MailFrom',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    behaviorOnMxFailure = registerOutput<String?>('behaviorOnMxFailure');
    domain = registerOutput<String>('domain');
    mailFromDomain = registerOutput<String>('mailFromDomain');
    region = registerOutput<String>('region');
  }
}
