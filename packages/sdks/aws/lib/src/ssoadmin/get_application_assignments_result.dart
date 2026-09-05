// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_assignments_application_assignment.dart';

/// Result data returned by getApplicationAssignments.
class GetApplicationAssignmentsResult {
  /// ARN of the application.
  final String? applicationArn;
  /// List of principals assigned to the application. See the `applicationAssignments` attribute reference below.
  final List<GetApplicationAssignmentsApplicationAssignment>? applicationAssignments;
  final String? id;
  final String? region;

  /// Creates a new [GetApplicationAssignmentsResult].
  /// [applicationArn] ARN of the application.
  /// [applicationAssignments] List of principals assigned to the application. See the `applicationAssignments` attribute reference below.
  /// [id] Optional.
  /// [region] Optional.
  const GetApplicationAssignmentsResult({
    this.applicationArn,
    this.applicationAssignments,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': ?applicationArn,
      'applicationAssignments': ?(() { final guardedValue = applicationAssignments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationAssignmentsApplicationAssignment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetApplicationAssignmentsResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationAssignmentsResult(
      applicationArn: (() { final guardedValue = map['applicationArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      applicationAssignments: (() { final guardedValue = map['applicationAssignments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationAssignmentsApplicationAssignment>(guardedValue, (value) => GetApplicationAssignmentsApplicationAssignment.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
