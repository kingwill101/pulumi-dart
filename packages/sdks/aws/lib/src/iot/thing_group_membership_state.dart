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
  ThingGroupMembershipState({
    pulumi.Output<bool>? overrideDynamicGroup,
    pulumi.Output<String>? region,
    pulumi.Output<String>? thingGroupName,
    pulumi.Output<String>? thingName,
  }) :
      overrideDynamicGroup = pulumi.Input.asOptionalInput<bool>(overrideDynamicGroup),
      region = pulumi.Input.asOptionalInput<String>(region),
      thingGroupName = pulumi.Input.asOptionalInput<String>(thingGroupName),
      thingName = pulumi.Input.asOptionalInput<String>(thingName);

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
      overrideDynamicGroup: map['overrideDynamicGroup'] == null ? null : pulumi.Output.create<bool>(map['overrideDynamicGroup'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      thingGroupName: map['thingGroupName'] == null ? null : pulumi.Output.create<String>(map['thingGroupName'] as String),
      thingName: map['thingName'] == null ? null : pulumi.Output.create<String>(map['thingName'] as String),
    );
  }
}

