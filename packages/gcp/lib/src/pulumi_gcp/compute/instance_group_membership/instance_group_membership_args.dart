// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InstanceGroupMembership.
class InstanceGroupMembershipArgs {
  /// An instance being added to the InstanceGroup
  final Input<String> instance;

  /// Represents an Instance Group resource name that the instance belongs to.
  final Input<String> instanceGroup;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A reference to the zone where the instance group resides.
  final Input<String>? zone;

  InstanceGroupMembershipArgs({
    required this.instance,
    required this.instanceGroup,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    map['instanceGroup'] = instanceGroup;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceGroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGroupMembershipArgs(
      instance: Input.asInput<String>(map['instance']),
      instanceGroup: Input.asInput<String>(map['instanceGroup']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
