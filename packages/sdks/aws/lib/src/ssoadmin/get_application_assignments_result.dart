// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_assignments_application_assignment.dart';

/// Result data returned by getApplicationAssignments.
class GetApplicationAssignmentsResult {
  /// ARN of the application.
  final String applicationArn;
  /// List of principals assigned to the application. See the `application_assignments` attribute reference below.
  final List<GetApplicationAssignmentsApplicationAssignment> applicationAssignments;
  final String id;
  final String region;

  /// Creates a new [GetApplicationAssignmentsResult].
  /// [applicationArn] ARN of the application.
  /// [applicationAssignments] List of principals assigned to the application. See the `application_assignments` attribute reference below.
  /// [id] Required.
  /// [region] Required.
  GetApplicationAssignmentsResult({
    required this.applicationArn,
    required this.applicationAssignments,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': applicationArn,
      'applicationAssignments': pulumi.Input.encodeList<GetApplicationAssignmentsApplicationAssignment, Map<String, dynamic>>(applicationAssignments, (value) => value.toMap()),
      'id': id,
      'region': region,
    };
  }

  factory GetApplicationAssignmentsResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationAssignmentsResult(
      applicationArn: map['applicationArn'] as String,
      applicationAssignments: pulumi.Input.decodeList<GetApplicationAssignmentsApplicationAssignment>(map['applicationAssignments']!, (value) => GetApplicationAssignmentsApplicationAssignment.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

