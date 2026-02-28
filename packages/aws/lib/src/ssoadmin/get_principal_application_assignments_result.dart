// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_principal_application_assignments_application_assignment.dart';

/// Result data returned by getPrincipalApplicationAssignments.
class GetPrincipalApplicationAssignmentsResult {
  /// List of principals assigned to the application. See the `application_assignments` attribute reference below.
  final List<GetPrincipalApplicationAssignmentsApplicationAssignment>?
      applicationAssignments;
  final String id;
  final String instanceArn;

  /// An identifier for an object in IAM Identity Center, such as a user or group.
  final String principalId;

  /// Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  final String principalType;
  final String region;

  /// Creates a new [GetPrincipalApplicationAssignmentsResult].
  /// [applicationAssignments] List of principals assigned to the application. See the `application_assignments` attribute reference below.
  /// [id] Required.
  /// [instanceArn] Required.
  /// [principalId] An identifier for an object in IAM Identity Center, such as a user or group.
  /// [principalType] Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  /// [region] Required.
  GetPrincipalApplicationAssignmentsResult({
    this.applicationAssignments,
    required this.id,
    required this.instanceArn,
    required this.principalId,
    required this.principalType,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationAssignmentsValue = applicationAssignments;
    if (applicationAssignmentsValue != null) {
      map['applicationAssignments'] = pulumi.Input.encodeList<
              GetPrincipalApplicationAssignmentsApplicationAssignment,
              Map<String, dynamic>>(
          applicationAssignmentsValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['instanceArn'] = instanceArn;
    map['principalId'] = principalId;
    map['principalType'] = principalType;
    map['region'] = region;
    return map;
  }

  factory GetPrincipalApplicationAssignmentsResult.fromMap(
      Map<String, dynamic> map) {
    return GetPrincipalApplicationAssignmentsResult(
      applicationAssignments: map['applicationAssignments'] == null
          ? null
          : pulumi.Input.decodeList<
                  GetPrincipalApplicationAssignmentsApplicationAssignment>(
              map['applicationAssignments'],
              (value) => GetPrincipalApplicationAssignmentsApplicationAssignment
                  .fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceArn: map['instanceArn'] as String,
      principalId: map['principalId'] as String,
      principalType: map['principalType'] as String,
      region: map['region'] as String,
    );
  }
}
