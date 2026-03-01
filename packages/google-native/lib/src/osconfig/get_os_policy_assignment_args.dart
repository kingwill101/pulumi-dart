// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_osconfig_v1_get_os_policy_assignment_args_doc}
/// Arguments for getOsPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1_get_os_policy_assignment_args_doc}
class GetOsPolicyAssignmentArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> osPolicyAssignmentId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetOsPolicyAssignmentArgs].
  /// [location] Required.
  /// [osPolicyAssignmentId] Required.
  /// [project] Optional.
  GetOsPolicyAssignmentArgs({
    required String location,
    required String osPolicyAssignmentId,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       osPolicyAssignmentId = pulumi.Input.asInput<String>(
         osPolicyAssignmentId,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'osPolicyAssignmentId': osPolicyAssignmentId,
      'project': ?project,
    };
  }

  factory GetOsPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetOsPolicyAssignmentArgs(
      location: map['location'] as String,
      osPolicyAssignmentId: map['osPolicyAssignmentId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
