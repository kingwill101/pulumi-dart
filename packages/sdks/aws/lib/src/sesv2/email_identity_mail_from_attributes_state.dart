// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailIdentityMailFromAttributes resources.
class EmailIdentityMailFromAttributesState {
  /// The action to take if the required MX record isn't found when you send an email. Valid values: `USE_DEFAULT_VALUE`, `REJECT_MESSAGE`.
  final pulumi.Input<String>? behaviorOnMxFailure;

  /// The verified email identity.
  final pulumi.Input<String>? emailIdentity;

  /// The custom MAIL FROM domain that you want the verified identity to use. Required if `behavior_on_mx_failure` is `REJECT_MESSAGE`.
  final pulumi.Input<String>? mailFromDomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EmailIdentityMailFromAttributesState].
  /// [behaviorOnMxFailure] The action to take if the required MX record isn't found when you send an email. Valid values: `USE_DEFAULT_VALUE`, `REJECT_MESSAGE`.
  /// [emailIdentity] The verified email identity.
  /// [mailFromDomain] The custom MAIL FROM domain that you want the verified identity to use. Required if `behavior_on_mx_failure` is `REJECT_MESSAGE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EmailIdentityMailFromAttributesState({
    this.behaviorOnMxFailure,
    this.emailIdentity,
    this.mailFromDomain,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behaviorOnMxFailure': ?behaviorOnMxFailure,
      'emailIdentity': ?emailIdentity,
      'mailFromDomain': ?mailFromDomain,
      'region': ?region,
    };
  }

  factory EmailIdentityMailFromAttributesState.fromMap(
    Map<String, dynamic> map,
  ) {
    return EmailIdentityMailFromAttributesState(
      behaviorOnMxFailure: (() {
        final guardedValue = map['behaviorOnMxFailure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      emailIdentity: (() {
        final guardedValue = map['emailIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mailFromDomain: (() {
        final guardedValue = map['mailFromDomain'];
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
