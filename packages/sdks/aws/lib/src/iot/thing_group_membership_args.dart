// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_thing_group_membership_thing_group_membership_args_doc}
/// The set of arguments for ThingGroupMembership.
/// {@endtemplate}
/// {@macro pulumi_iot_thing_group_membership_thing_group_membership_args_doc}
class ThingGroupMembershipArgs {
  /// Override dynamic thing groups with static thing groups when 10-group limit is reached. If a thing belongs to 10 thing groups, and one or more of those groups are dynamic thing groups, adding a thing to a static group removes the thing from the last dynamic group.
  final pulumi.Input<bool?>? overrideDynamicGroup;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The name of the group to which you are adding a thing.
  final pulumi.Input<String> thingGroupName;
  /// The name of the thing to add to a group.
  final pulumi.Input<String> thingName;

  /// Creates a new [ThingGroupMembershipArgs].
  /// [overrideDynamicGroup] Override dynamic thing groups with static thing groups when 10-group limit is reached. If a thing belongs to 10 thing groups, and one or more of those groups are dynamic thing groups, adding a thing to a static group removes the thing from the last dynamic group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [thingGroupName] The name of the group to which you are adding a thing.
  /// [thingName] The name of the thing to add to a group.
  const ThingGroupMembershipArgs({
    this.overrideDynamicGroup,
    this.region,
    required this.thingGroupName,
    required this.thingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overrideDynamicGroup': ?overrideDynamicGroup,
      'region': ?region,
      'thingGroupName': thingGroupName,
      'thingName': thingName,
    };
  }

  factory ThingGroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return ThingGroupMembershipArgs(
      overrideDynamicGroup: (() { final guardedValue = map['overrideDynamicGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thingGroupName: pulumi.Input.fromValue(map['thingGroupName'] as String),
      thingName: pulumi.Input.fromValue(map['thingName'] as String),
    );
  }
}
