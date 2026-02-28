// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy.dart';
import 'ospolicy_assignment_instance_filter.dart';
import 'ospolicy_assignment_rollout.dart';

/// {@template pulumi_osconfig_v1_os_policy_assignment_args_doc}
/// The set of arguments for OsPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1_os_policy_assignment_args_doc}
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

  /// Creates a new [OsPolicyAssignmentArgs].
  /// [description] OS policy assignment description. Length of the description is limited to 1024 characters.
  /// [etag] The etag for this OS policy assignment. If this is provided on update, it must match the server's etag.
  /// [instanceFilter] Filter to select VMs.
  /// [location] Optional.
  /// [name] Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.
  /// [osPolicies] List of OS policies to be applied to the VMs.
  /// [osPolicyAssignmentId] Required. The logical name of the OS policy assignment in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  /// [project] Optional.
  /// [rollout] Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted.
  OsPolicyAssignmentArgs({
    String? description,
    String? etag,
    required OSPolicyAssignmentInstanceFilter instanceFilter,
    String? location,
    String? name,
    required List<OSPolicy> osPolicies,
    required String osPolicyAssignmentId,
    String? project,
    required OSPolicyAssignmentRollout rollout,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        instanceFilter = pulumi.Input.asInput<OSPolicyAssignmentInstanceFilter>(
            instanceFilter),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        osPolicies = pulumi.Input.asInput<List<OSPolicy>>(osPolicies),
        osPolicyAssignmentId =
            pulumi.Input.asInput<String>(osPolicyAssignmentId),
        project = pulumi.Input.asOptionalInput<String>(project),
        rollout = pulumi.Input.asInput<OSPolicyAssignmentRollout>(rollout);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      instanceFilter: OSPolicyAssignmentInstanceFilter.fromMap(
          (map['instanceFilter'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      osPolicies: pulumi.Input.decodeList<OSPolicy>(map['osPolicies'],
          (value) => OSPolicy.fromMap((value as Map).cast<String, dynamic>())),
      osPolicyAssignmentId: map['osPolicyAssignmentId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rollout: OSPolicyAssignmentRollout.fromMap(
          (map['rollout'] as Map).cast<String, dynamic>()),
    );
  }
}
