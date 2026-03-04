// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_email_identity_email_identity_args_doc}
/// The set of arguments for EmailIdentity.
/// {@endtemplate}
/// {@macro pulumi_ses_email_identity_email_identity_args_doc}
class EmailIdentityArgs {
  /// The email address to assign to SES.
  final pulumi.Input<String> email;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EmailIdentityArgs].
  /// [email] The email address to assign to SES.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EmailIdentityArgs({required this.email, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': email, 'region': ?region};
  }

  factory EmailIdentityArgs.fromMap(Map<String, dynamic> map) {
    return EmailIdentityArgs(
      email: pulumi.Input.fromValue(map['email'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
