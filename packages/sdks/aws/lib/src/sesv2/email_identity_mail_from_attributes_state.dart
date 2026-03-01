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
    pulumi.Output<String>? behaviorOnMxFailure,
    pulumi.Output<String>? emailIdentity,
    pulumi.Output<String>? mailFromDomain,
    pulumi.Output<String>? region,
  }) :
      behaviorOnMxFailure = pulumi.Input.asOptionalInput<String>(behaviorOnMxFailure),
      emailIdentity = pulumi.Input.asOptionalInput<String>(emailIdentity),
      mailFromDomain = pulumi.Input.asOptionalInput<String>(mailFromDomain),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behaviorOnMxFailure': ?behaviorOnMxFailure,
      'emailIdentity': ?emailIdentity,
      'mailFromDomain': ?mailFromDomain,
      'region': ?region,
    };
  }

  factory EmailIdentityMailFromAttributesState.fromMap(Map<String, dynamic> map) {
    return EmailIdentityMailFromAttributesState(
      behaviorOnMxFailure: map['behaviorOnMxFailure'] == null ? null : pulumi.Output.create<String>(map['behaviorOnMxFailure'] as String),
      emailIdentity: map['emailIdentity'] == null ? null : pulumi.Output.create<String>(map['emailIdentity'] as String),
      mailFromDomain: map['mailFromDomain'] == null ? null : pulumi.Output.create<String>(map['mailFromDomain'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

