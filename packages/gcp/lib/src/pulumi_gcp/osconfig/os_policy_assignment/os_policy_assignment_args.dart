// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../os_policy_assignment_instance_filter/os_policy_assignment_instance_filter.dart';
import '../os_policy_assignment_os_policy/os_policy_assignment_os_policy.dart';
import '../os_policy_assignment_rollout/os_policy_assignment_rollout.dart';

/// The set of arguments for OsPolicyAssignment.
class OsPolicyAssignmentArgs {
  /// OS policy assignment description. Length of the description is limited to 1024 characters.
  final pulumi.Input<String>? description;

  /// Filter to select VMs. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentInstanceFilter> instanceFilter;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// Resource name.
  final pulumi.Input<String>? name;

  /// List of OS policies to be applied to the VMs.
  /// Structure is documented below.
  final pulumi.Input<List<OsPolicyAssignmentOsPolicy>> osPolicies;

  /// The project for the resource
  final pulumi.Input<String>? project;

  /// Rollout to deploy the OS policy assignment. A rollout
  /// is triggered in the following situations: 1) OSPolicyAssignment is created.
  /// 2) OSPolicyAssignment is updated and the update contains changes to one of
  /// the following fields: - instance_filter - os_policies 3) OSPolicyAssignment
  /// is deleted. Structure is documented below.
  final pulumi.Input<OsPolicyAssignmentRollout> rollout;

  /// Set to true to skip awaiting rollout during resource creation and update.
  final pulumi.Input<bool>? skipAwaitRollout;

  OsPolicyAssignmentArgs({
    this.description,
    required this.instanceFilter,
    required this.location,
    this.name,
    required this.osPolicies,
    this.project,
    required this.rollout,
    this.skipAwaitRollout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['instanceFilter'] = pulumi.Input.mapInputValue<
        OsPolicyAssignmentInstanceFilter,
        Map<String, dynamic>>(instanceFilter, (value) => value.toMap());
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['osPolicies'] = pulumi.Input.mapInputValue<
            List<OsPolicyAssignmentOsPolicy>, List<Map<String, dynamic>>>(
        osPolicies,
        (value) => pulumi.Input.encodeList<OsPolicyAssignmentOsPolicy,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rollout'] = pulumi.Input.mapInputValue<OsPolicyAssignmentRollout,
        Map<String, dynamic>>(rollout, (value) => value.toMap());
    final skipAwaitRolloutValue = skipAwaitRollout;
    if (skipAwaitRolloutValue != null) {
      map['skipAwaitRollout'] = skipAwaitRolloutValue;
    }
    return map;
  }

  factory OsPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      instanceFilter: pulumi.Input.asInput<OsPolicyAssignmentInstanceFilter>(
          map['instanceFilter']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      osPolicies: pulumi.Input.asInput<List<OsPolicyAssignmentOsPolicy>>(
          map['osPolicies']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rollout: pulumi.Input.asInput<OsPolicyAssignmentRollout>(map['rollout']),
      skipAwaitRollout:
          pulumi.Input.asOptionalInput<bool>(map['skipAwaitRollout']),
    );
  }
}
