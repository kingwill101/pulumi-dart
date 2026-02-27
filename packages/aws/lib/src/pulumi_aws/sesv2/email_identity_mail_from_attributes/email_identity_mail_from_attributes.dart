import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_identity_mail_from_attributes_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Email Identity Mail From Attributes.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Email Identity Mail From Attributes using the `email_identity`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/emailIdentityMailFromAttributes:EmailIdentityMailFromAttributes example example.com
/// ```
class EmailIdentityMailFromAttributes extends pulumi.CustomResource {
  /// The action to take if the required MX record isn't found when you send an email. Valid values: `USE_DEFAULT_VALUE`, `REJECT_MESSAGE`.
  late final pulumi.Output<String?> behaviorOnMxFailure;

  /// The verified email identity.
  late final pulumi.Output<String> emailIdentity;

  /// The custom MAIL FROM domain that you want the verified identity to use. Required if `behavior_on_mx_failure` is `REJECT_MESSAGE`.
  late final pulumi.Output<String?> mailFromDomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  EmailIdentityMailFromAttributes(
    String name, {
    EmailIdentityMailFromAttributesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/emailIdentityMailFromAttributes:EmailIdentityMailFromAttributes',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.behaviorOnMxFailure = registerOutput<String?>('behaviorOnMxFailure');
    this.emailIdentity = registerOutput<String>('emailIdentity');
    this.mailFromDomain = registerOutput<String?>('mailFromDomain');
    this.region = registerOutput<String>('region');
  }
}
