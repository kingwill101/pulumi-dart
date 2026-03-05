// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_get_email_identity_get_email_identity_args_doc}
/// Arguments for getEmailIdentity.
/// {@endtemplate}
/// {@macro pulumi_ses_get_email_identity_get_email_identity_args_doc}
class GetEmailIdentityArgs {
  /// Email identity.
  final pulumi.Input<String> email;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetEmailIdentityArgs].
  /// [email] Email identity.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetEmailIdentityArgs({
    required this.email,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'region': ?region,
    };
  }

  factory GetEmailIdentityArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailIdentityArgs(
      email: pulumi.Input.fromValue(map['email'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

