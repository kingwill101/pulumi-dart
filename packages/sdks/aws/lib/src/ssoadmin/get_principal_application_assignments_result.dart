// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_principal_application_assignments_application_assignment.dart';

/// Result data returned by getPrincipalApplicationAssignments.
class GetPrincipalApplicationAssignmentsResult {
  /// List of principals assigned to the application. See the `applicationAssignments` attribute reference below.
  final List<GetPrincipalApplicationAssignmentsApplicationAssignment>? applicationAssignments;
  final String? id;
  final String? instanceArn;
  /// An identifier for an object in IAM Identity Center, such as a user or group.
  final String? principalId;
  /// Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  final String? principalType;
  final String? region;

  /// Creates a new [GetPrincipalApplicationAssignmentsResult].
  /// [applicationAssignments] List of principals assigned to the application. See the `applicationAssignments` attribute reference below.
  /// [id] Optional.
  /// [instanceArn] Optional.
  /// [principalId] An identifier for an object in IAM Identity Center, such as a user or group.
  /// [principalType] Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  /// [region] Optional.
  const GetPrincipalApplicationAssignmentsResult({
    this.applicationAssignments,
    this.id,
    this.instanceArn,
    this.principalId,
    this.principalType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAssignments': ?(() { final guardedValue = applicationAssignments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPrincipalApplicationAssignmentsApplicationAssignment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instanceArn': ?instanceArn,
      'principalId': ?principalId,
      'principalType': ?principalType,
      'region': ?region,
    };
  }

  factory GetPrincipalApplicationAssignmentsResult.fromMap(Map<String, dynamic> map) {
    return GetPrincipalApplicationAssignmentsResult(
      applicationAssignments: (() { final guardedValue = map['applicationAssignments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPrincipalApplicationAssignmentsApplicationAssignment>(guardedValue, (value) => GetPrincipalApplicationAssignmentsApplicationAssignment.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceArn: (() { final guardedValue = map['instanceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
