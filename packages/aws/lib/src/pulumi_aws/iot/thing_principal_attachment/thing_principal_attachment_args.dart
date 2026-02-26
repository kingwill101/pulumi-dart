// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ThingPrincipalAttachment.
class ThingPrincipalAttachmentArgs {
  /// The AWS IoT Certificate ARN or Amazon Cognito Identity ID.
  final Input<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the thing.
  final Input<String> thing;

  /// The type of relationship to specify when attaching a principal to a thing. Valid values are `EXCLUSIVE_THING` (the thing will be the only one attached to the principal) or `NON_EXCLUSIVE_THING` (multiple things can be attached to the principal). Defaults to `NON_EXCLUSIVE_THING`.
  final Input<String>? thingPrincipalType;

  ThingPrincipalAttachmentArgs({
    required this.principal,
    this.region,
    required this.thing,
    this.thingPrincipalType,
  });

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
      principal: Input.asInput<String>(map['principal']),
      region: Input.asOptionalInput<String>(map['region']),
      thing: Input.asInput<String>(map['thing']),
      thingPrincipalType:
          Input.asOptionalInput<String>(map['thingPrincipalType']),
    );
  }
}
