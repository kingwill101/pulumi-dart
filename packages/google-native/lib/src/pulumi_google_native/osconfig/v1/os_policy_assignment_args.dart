// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy.dart';
import 'ospolicy_assignment_instance_filter.dart';
import 'ospolicy_assignment_rollout.dart';

/// The set of arguments for OsPolicyAssignment.
class OsPolicyAssignmentArgs {
  /// OS policy assignment description. Length of the description is limited to 1024 characters.
  final pulumi.Input<String>? description;

  /// The etag for this OS policy assignment. If this is provided on update, it must match the server's etag.
  final pulumi.Input<String>? etag;

  /// Filter to select VMs.
  final pulumi.Input<OSPolicyAssignmentInstanceFilter> instanceFilter;
  final pulumi.Input<String>? location;

  /// Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.
  final pulumi.Input<String>? name;

  /// List of OS policies to be applied to the VMs.
  final pulumi.Input<List<OSPolicy>> osPolicies;

  /// Required. The logical name of the OS policy assignment in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  final pulumi.Input<String> osPolicyAssignmentId;
  final pulumi.Input<String>? project;

  /// Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted.
  final pulumi.Input<OSPolicyAssignmentRollout> rollout;

  OsPolicyAssignmentArgs({
    this.description,
    this.etag,
    required this.instanceFilter,
    this.location,
    this.name,
    required this.osPolicies,
    required this.osPolicyAssignmentId,
    this.project,
    required this.rollout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['instanceFilter'] = pulumi.Input.mapInputValue<
        OSPolicyAssignmentInstanceFilter,
        Map<String, dynamic>>(instanceFilter, (value) => value.toMap());
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['osPolicies'] =
        pulumi.Input.mapInputValue<List<OSPolicy>, List<Map<String, dynamic>>>(
            osPolicies,
            (value) => pulumi.Input.encodeList<OSPolicy, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['osPolicyAssignmentId'] = osPolicyAssignmentId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rollout'] = pulumi.Input.mapInputValue<OSPolicyAssignmentRollout,
        Map<String, dynamic>>(rollout, (value) => value.toMap());
    return map;
  }

  factory OsPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      instanceFilter: pulumi.Input.asInput<OSPolicyAssignmentInstanceFilter>(
          map['instanceFilter']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      osPolicies: pulumi.Input.asInput<List<OSPolicy>>(map['osPolicies']),
      osPolicyAssignmentId:
          pulumi.Input.asInput<String>(map['osPolicyAssignmentId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rollout: pulumi.Input.asInput<OSPolicyAssignmentRollout>(map['rollout']),
    );
  }
}
