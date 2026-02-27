import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_identity_args.dart';

/// Provides an SES email identity resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SES email identities using the email address. For example:
///
/// ```sh
/// $ pulumi import aws:ses/emailIdentity:EmailIdentity example email@example.com
/// ```
class EmailIdentity extends pulumi.CustomResource {
  /// The ARN of the email identity.
  late final pulumi.Output<String> arn;

  /// The email address to assign to SES.
  late final pulumi.Output<String> email;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  EmailIdentity(
    String name, {
    EmailIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/emailIdentity:EmailIdentity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.email = registerOutput<String>('email');
    this.region = registerOutput<String>('region');
  }
}
