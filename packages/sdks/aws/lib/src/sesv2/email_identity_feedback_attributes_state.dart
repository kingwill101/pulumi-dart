// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailIdentityFeedbackAttributes resources.
class EmailIdentityFeedbackAttributesState {
  /// Sets the feedback forwarding configuration for the identity.
  final pulumi.Input<bool>? emailForwardingEnabled;
  /// The email identity.
  final pulumi.Input<String>? emailIdentity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EmailIdentityFeedbackAttributesState].
  /// [emailForwardingEnabled] Sets the feedback forwarding configuration for the identity.
  /// [emailIdentity] The email identity.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const EmailIdentityFeedbackAttributesState({
    this.emailForwardingEnabled,
    this.emailIdentity,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailForwardingEnabled': ?emailForwardingEnabled,
      'emailIdentity': ?emailIdentity,
      'region': ?region,
    };
  }

  factory EmailIdentityFeedbackAttributesState.fromMap(Map<String, dynamic> map) {
    return EmailIdentityFeedbackAttributesState(
      emailForwardingEnabled: (() { final guardedValue = map['emailForwardingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      emailIdentity: (() { final guardedValue = map['emailIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
