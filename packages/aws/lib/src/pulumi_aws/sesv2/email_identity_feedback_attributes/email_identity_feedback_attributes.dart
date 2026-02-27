import 'package:pulumi/pulumi.dart';
import 'email_identity_feedback_attributes_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Email Identity Feedback Attributes.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Email Identity Feedback Attributes using the `email_identity`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/emailIdentityFeedbackAttributes:EmailIdentityFeedbackAttributes example example.com
/// ```
class EmailIdentityFeedbackAttributes extends CustomResource {
  /// Sets the feedback forwarding configuration for the identity.
  late final Output<bool?> emailForwardingEnabled;

  /// The email identity.
  late final Output<String> emailIdentity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  EmailIdentityFeedbackAttributes(
    String name, {
    EmailIdentityFeedbackAttributesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/emailIdentityFeedbackAttributes:EmailIdentityFeedbackAttributes',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.emailForwardingEnabled =
        registerOutput<bool?>('emailForwardingEnabled');
    this.emailIdentity = registerOutput<String>('emailIdentity');
    this.region = registerOutput<String>('region');
  }
}
