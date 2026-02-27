// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'ospolicy2.dart';
import 'ospolicy_assignment_instance_filter2.dart';
import 'ospolicy_assignment_rollout2.dart';

/// The set of arguments for OsPolicyAssignment.
class OsPolicyAssignmentArgs2 {
  /// OS policy assignment description. Length of the description is limited to 1024 characters.
  final Input<String>? description;

  /// The etag for this OS policy assignment. If this is provided on update, it must match the server's etag.
  final Input<String>? etag;

  /// Filter to select VMs.
  final Input<OSPolicyAssignmentInstanceFilter2> instanceFilter;
  final Input<String>? location;

  /// Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.
  final Input<String>? name;

  /// List of OS policies to be applied to the VMs.
  final Input<List<OSPolicy2>> osPolicies;

  /// Required. The logical name of the OS policy assignment in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  final Input<String> osPolicyAssignmentId;
  final Input<String>? project;

  /// Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted.
  final Input<OSPolicyAssignmentRollout2> rollout;

  OsPolicyAssignmentArgs2({
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
    map['instanceFilter'] = Input.mapInputValue<
        OSPolicyAssignmentInstanceFilter2,
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
        Input.mapInputValue<List<OSPolicy2>, List<Map<String, dynamic>>>(
            osPolicies,
            (value) => Input.encodeList<OSPolicy2, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['osPolicyAssignmentId'] = osPolicyAssignmentId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rollout'] =
        Input.mapInputValue<OSPolicyAssignmentRollout2, Map<String, dynamic>>(
            rollout, (value) => value.toMap());
    return map;
  }

  factory OsPolicyAssignmentArgs2.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      instanceFilter: Input.asInput<OSPolicyAssignmentInstanceFilter2>(
          map['instanceFilter']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      osPolicies: Input.asInput<List<OSPolicy2>>(map['osPolicies']),
      osPolicyAssignmentId: Input.asInput<String>(map['osPolicyAssignmentId']),
      project: Input.asOptionalInput<String>(map['project']),
      rollout: Input.asInput<OSPolicyAssignmentRollout2>(map['rollout']),
    );
  }
}
