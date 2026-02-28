// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_thing_principal_attachment_thing_principal_attachment_args_doc}
/// The set of arguments for ThingPrincipalAttachment.
/// {@endtemplate}
/// {@macro pulumi_iot_thing_principal_attachment_thing_principal_attachment_args_doc}
class ThingPrincipalAttachmentArgs {
  /// The AWS IoT Certificate ARN or Amazon Cognito Identity ID.
  final pulumi.Input<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the thing.
  final pulumi.Input<String> thing;

  /// The type of relationship to specify when attaching a principal to a thing. Valid values are `EXCLUSIVE_THING` (the thing will be the only one attached to the principal) or `NON_EXCLUSIVE_THING` (multiple things can be attached to the principal). Defaults to `NON_EXCLUSIVE_THING`.
  final pulumi.Input<String>? thingPrincipalType;

  /// Creates a new [ThingPrincipalAttachmentArgs].
  /// [principal] The AWS IoT Certificate ARN or Amazon Cognito Identity ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [thing] The name of the thing.
  /// [thingPrincipalType] The type of relationship to specify when attaching a principal to a thing. Valid values are `EXCLUSIVE_THING` (the thing will be the only one attached to the principal) or `NON_EXCLUSIVE_THING` (multiple things can be attached to the principal). Defaults to `NON_EXCLUSIVE_THING`.
  ThingPrincipalAttachmentArgs({
    required String principal,
    String? region,
    required String thing,
    String? thingPrincipalType,
  })  : principal = pulumi.Input.asInput<String>(principal),
        region = pulumi.Input.asOptionalInput<String>(region),
        thing = pulumi.Input.asInput<String>(thing),
        thingPrincipalType =
            pulumi.Input.asOptionalInput<String>(thingPrincipalType);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['principal'] = principal;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['thing'] = thing;
    final thingPrincipalTypeValue = thingPrincipalType;
    if (thingPrincipalTypeValue != null) {
      map['thingPrincipalType'] = thingPrincipalTypeValue;
    }
    return map;
  }

  factory ThingPrincipalAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ThingPrincipalAttachmentArgs(
      principal: map['principal'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      thing: map['thing'] as String,
      thingPrincipalType: map['thingPrincipalType'] == null
          ? null
          : map['thingPrincipalType'] as String,
    );
  }
}
