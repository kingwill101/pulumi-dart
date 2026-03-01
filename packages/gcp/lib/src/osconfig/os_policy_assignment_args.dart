// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_instance_filter.dart';
import 'os_policy_assignment_os_policy.dart';
import 'os_policy_assignment_rollout.dart';

/// {@template pulumi_osconfig_os_policy_assignment_os_policy_assignment_args_doc}
/// The set of arguments for OsPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_os_policy_assignment_os_policy_assignment_args_doc}
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

  /// Creates a new [OsPolicyAssignmentArgs].
  /// [description] OS policy assignment description. Length of the description is limited to 1024 characters.
  /// [instanceFilter] Filter to select VMs. Structure is
  /// [location] The location for the resource
  /// [name] Resource name.
  /// [osPolicies] List of OS policies to be applied to the VMs.
  /// [project] The project for the resource
  /// [rollout] Rollout to deploy the OS policy assignment. A rollout
  /// [skipAwaitRollout] Set to true to skip awaiting rollout during resource creation and update.
  OsPolicyAssignmentArgs({
    String? description,
    required OsPolicyAssignmentInstanceFilter instanceFilter,
    required String location,
    String? name,
    required List<OsPolicyAssignmentOsPolicy> osPolicies,
    String? project,
    required OsPolicyAssignmentRollout rollout,
    bool? skipAwaitRollout,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       instanceFilter = pulumi.Input.asInput<OsPolicyAssignmentInstanceFilter>(
         instanceFilter,
       ),
       location = pulumi.Input.asInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       osPolicies = pulumi.Input.asInput<List<OsPolicyAssignmentOsPolicy>>(
         osPolicies,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       rollout = pulumi.Input.asInput<OsPolicyAssignmentRollout>(rollout),
       skipAwaitRollout = pulumi.Input.asOptionalInput<bool>(skipAwaitRollout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'instanceFilter':
          pulumi.Input.mapInputValue<
            OsPolicyAssignmentInstanceFilter,
            Map<String, dynamic>
          >(instanceFilter, (value) => value.toMap()),
      'location': location,
      'name': ?name,
      'osPolicies':
          pulumi.Input.mapInputValue<
            List<OsPolicyAssignmentOsPolicy>,
            List<Map<String, dynamic>>
          >(
            osPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  OsPolicyAssignmentOsPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'rollout':
          pulumi.Input.mapInputValue<
            OsPolicyAssignmentRollout,
            Map<String, dynamic>
          >(rollout, (value) => value.toMap()),
      'skipAwaitRollout': ?skipAwaitRollout,
    };
  }

  factory OsPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      instanceFilter: OsPolicyAssignmentInstanceFilter.fromMap(
        (map['instanceFilter'] as Map).cast<String, dynamic>(),
      ),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      osPolicies: pulumi.Input.decodeList<OsPolicyAssignmentOsPolicy>(
        map['osPolicies'],
        (value) => OsPolicyAssignmentOsPolicy.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      project: map['project'] == null ? null : map['project'] as String,
      rollout: OsPolicyAssignmentRollout.fromMap(
        (map['rollout'] as Map).cast<String, dynamic>(),
      ),
      skipAwaitRollout: map['skipAwaitRollout'] == null
          ? null
          : map['skipAwaitRollout'] as bool,
    );
  }
}
