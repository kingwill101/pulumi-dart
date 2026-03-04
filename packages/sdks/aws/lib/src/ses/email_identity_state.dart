// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailIdentity resources.
class EmailIdentityState {
  /// The ARN of the email identity.
  final pulumi.Input<String>? arn;

  /// The email address to assign to SES.
  final pulumi.Input<String>? email;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EmailIdentityState].
  /// [arn] The ARN of the email identity.
  /// [email] The email address to assign to SES.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EmailIdentityState({this.arn, this.email, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': ?arn, 'email': ?email, 'region': ?region};
  }

  factory EmailIdentityState.fromMap(Map<String, dynamic> map) {
    return EmailIdentityState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
