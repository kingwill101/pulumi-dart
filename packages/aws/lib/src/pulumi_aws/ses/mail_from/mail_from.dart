import 'package:pulumi/pulumi.dart';
import 'mail_from_args.dart';

/// Provides an SES domain MAIL FROM resource.
///
/// > **NOTE:** For the MAIL FROM domain to be fully usable, this resource should be paired with the aws.ses.DomainIdentity resource. To validate the MAIL FROM domain, a DNS MX record is required. To pass SPF checks, a DNS TXT record may also be required. See the [Amazon SES MAIL FROM documentation](https://docs.aws.amazon.com/ses/latest/dg/mail-from.html) for more information.
///
/// ## Example Usage
///
/// ### Domain Identity MAIL FROM
///
///
///
/// ### Email Identity MAIL FROM
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MAIL FROM domain using the `domain` attribute. For example:
///
/// ```sh
/// $ pulumi import aws:ses/mailFrom:MailFrom example example.com
/// ```
class MailFrom extends CustomResource {
  /// The action that you want Amazon SES to take if it cannot successfully read the required MX record when you send an email. Defaults to `UseDefaultValue`. See the [SES API documentation](https://docs.aws.amazon.com/ses/latest/APIReference/API_SetIdentityMailFromDomain.html) for more information.
  late final Output<String?> behaviorOnMxFailure;

  /// Verified domain name or email identity to generate DKIM tokens for.
  late final Output<String> domain;

  /// Subdomain (of above domain) which is to be used as MAIL FROM address (Required for DMARC validation)
  ///
  /// The following arguments are optional:
  late final Output<String> mailFromDomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  MailFrom(
    String name, {
    MailFromArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ses/mailFrom:MailFrom',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.behaviorOnMxFailure = registerOutput<String?>('behaviorOnMxFailure');
    this.domain = registerOutput<String>('domain');
    this.mailFromDomain = registerOutput<String>('mailFromDomain');
    this.region = registerOutput<String>('region');
  }
}
