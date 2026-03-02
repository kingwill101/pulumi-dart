// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ThingPrincipalAttachment resources.
class ThingPrincipalAttachmentState {
  /// The AWS IoT Certificate ARN or Amazon Cognito Identity ID.
  final pulumi.Input<String>? principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the thing.
  final pulumi.Input<String>? thing;
  /// The type of relationship to specify when attaching a principal to a thing. Valid values are `EXCLUSIVE_THING` (the thing will be the only one attached to the principal) or `NON_EXCLUSIVE_THING` (multiple things can be attached to the principal). Defaults to `NON_EXCLUSIVE_THING`.
  final pulumi.Input<String>? thingPrincipalType;

  /// Creates a new [ThingPrincipalAttachmentState].
  /// [principal] The AWS IoT Certificate ARN or Amazon Cognito Identity ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [thing] The name of the thing.
  /// [thingPrincipalType] The type of relationship to specify when attaching a principal to a thing. Valid values are `EXCLUSIVE_THING` (the thing will be the only one attached to the principal) or `NON_EXCLUSIVE_THING` (multiple things can be attached to the principal). Defaults to `NON_EXCLUSIVE_THING`.
  ThingPrincipalAttachmentState({
    this.principal,
    this.region,
    this.thing,
    this.thingPrincipalType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principal': ?principal,
      'region': ?region,
      'thing': ?thing,
      'thingPrincipalType': ?thingPrincipalType,
    };
  }

  factory ThingPrincipalAttachmentState.fromMap(Map<String, dynamic> map) {
    return ThingPrincipalAttachmentState(
      principal: map['principal'] == null ? null : ((map['principal'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      thing: map['thing'] == null ? null : ((map['thing'] as String).input()).input(),
      thingPrincipalType: map['thingPrincipalType'] == null ? null : ((map['thingPrincipalType'] as String).input()).input(),
    );
  }
}

