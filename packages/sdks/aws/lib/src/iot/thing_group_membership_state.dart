// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ThingGroupMembership resources.
class ThingGroupMembershipState {
  /// Override dynamic thing groups with static thing groups when 10-group limit is reached. If a thing belongs to 10 thing groups, and one or more of those groups are dynamic thing groups, adding a thing to a static group removes the thing from the last dynamic group.
  final pulumi.Input<bool>? overrideDynamicGroup;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the group to which you are adding a thing.
  final pulumi.Input<String>? thingGroupName;
  /// The name of the thing to add to a group.
  final pulumi.Input<String>? thingName;

  /// Creates a new [ThingGroupMembershipState].
  /// [overrideDynamicGroup] Override dynamic thing groups with static thing groups when 10-group limit is reached. If a thing belongs to 10 thing groups, and one or more of those groups are dynamic thing groups, adding a thing to a static group removes the thing from the last dynamic group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [thingGroupName] The name of the group to which you are adding a thing.
  /// [thingName] The name of the thing to add to a group.
  const ThingGroupMembershipState({
    this.overrideDynamicGroup,
    this.region,
    this.thingGroupName,
    this.thingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overrideDynamicGroup': ?overrideDynamicGroup,
      'region': ?region,
      'thingGroupName': ?thingGroupName,
      'thingName': ?thingName,
    };
  }

  factory ThingGroupMembershipState.fromMap(Map<String, dynamic> map) {
    return ThingGroupMembershipState(
      overrideDynamicGroup: (() { final guardedValue = map['overrideDynamicGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thingGroupName: (() { final guardedValue = map['thingGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thingName: (() { final guardedValue = map['thingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
