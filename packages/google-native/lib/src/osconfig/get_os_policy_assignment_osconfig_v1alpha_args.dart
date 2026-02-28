// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_osconfig_v1alpha_get_os_policy_assignment_osconfig_v1alpha_args_doc}
/// Arguments for getOsPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1alpha_get_os_policy_assignment_osconfig_v1alpha_args_doc}
class GetOsPolicyAssignmentOsconfigV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> osPolicyAssignmentId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetOsPolicyAssignmentOsconfigV1alphaArgs].
  /// [location] Required.
  /// [osPolicyAssignmentId] Required.
  /// [project] Optional.
  GetOsPolicyAssignmentOsconfigV1alphaArgs({
    required String location,
    required String osPolicyAssignmentId,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        osPolicyAssignmentId =
            pulumi.Input.asInput<String>(osPolicyAssignmentId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['osPolicyAssignmentId'] = osPolicyAssignmentId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetOsPolicyAssignmentOsconfigV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOsPolicyAssignmentOsconfigV1alphaArgs(
      location: map['location'] as String,
      osPolicyAssignmentId: map['osPolicyAssignmentId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
