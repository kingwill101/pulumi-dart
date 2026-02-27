import 'package:pulumi/pulumi.dart';
import 'thing_group_membership_args.dart';

/// Adds an IoT Thing to an IoT Thing Group.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT Thing Group Membership using the thing group name and thing name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/thingGroupMembership:ThingGroupMembership example thing_group_name/thing_name
/// ```
class ThingGroupMembership extends CustomResource {
  /// Override dynamic thing groups with static thing groups when 10-group limit is reached. If a thing belongs to 10 thing groups, and one or more of those groups are dynamic thing groups, adding a thing to a static group removes the thing from the last dynamic group.
  late final Output<bool?> overrideDynamicGroup;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the group to which you are adding a thing.
  late final Output<String> thingGroupName;

  /// The name of the thing to add to a group.
  late final Output<String> thingName;

  ThingGroupMembership(
    String name, {
    ThingGroupMembershipArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/thingGroupMembership:ThingGroupMembership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.overrideDynamicGroup = registerOutput<bool?>('overrideDynamicGroup');
    this.region = registerOutput<String>('region');
    this.thingGroupName = registerOutput<String>('thingGroupName');
    this.thingName = registerOutput<String>('thingName');
  }
}
