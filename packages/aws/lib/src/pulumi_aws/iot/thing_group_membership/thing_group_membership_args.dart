// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ThingGroupMembership.
class ThingGroupMembershipArgs {
  /// Override dynamic thing groups with static thing groups when 10-group limit is reached. If a thing belongs to 10 thing groups, and one or more of those groups are dynamic thing groups, adding a thing to a static group removes the thing from the last dynamic group.
  final Input<bool>? overrideDynamicGroup;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the group to which you are adding a thing.
  final Input<String> thingGroupName;

  /// The name of the thing to add to a group.
  final Input<String> thingName;

  ThingGroupMembershipArgs({
    this.overrideDynamicGroup,
    this.region,
    required this.thingGroupName,
    required this.thingName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final overrideDynamicGroupValue = overrideDynamicGroup;
    if (overrideDynamicGroupValue != null) {
      map['overrideDynamicGroup'] = overrideDynamicGroupValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['thingGroupName'] = thingGroupName;
    map['thingName'] = thingName;
    return map;
  }

  factory ThingGroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return ThingGroupMembershipArgs(
      overrideDynamicGroup:
          Input.asOptionalInput<bool>(map['overrideDynamicGroup']),
      region: Input.asOptionalInput<String>(map['region']),
      thingGroupName: Input.asInput<String>(map['thingGroupName']),
      thingName: Input.asInput<String>(map['thingName']),
    );
  }
}
