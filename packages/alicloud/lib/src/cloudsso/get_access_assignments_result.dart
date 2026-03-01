// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_assignments_assignment.dart';

/// Result data returned by getAccessAssignments.
class GetAccessAssignmentsResult {
  final String? accessConfigurationId;
  final List<GetAccessAssignmentsAssignment> assignments;
  final String directoryId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final String? principalType;
  final String? targetId;
  final String? targetType;

  /// Creates a new [GetAccessAssignmentsResult].
  /// [accessConfigurationId] Optional.
  /// [assignments] Required.
  /// [directoryId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [principalType] Optional.
  /// [targetId] Optional.
  /// [targetType] Optional.
  GetAccessAssignmentsResult({
    this.accessConfigurationId,
    required this.assignments,
    required this.directoryId,
    required this.id,
    required this.ids,
    this.outputFile,
    this.principalType,
    this.targetId,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigurationId': ?accessConfigurationId,
      'assignments': pulumi.Input.encodeList<GetAccessAssignmentsAssignment, Map<String, dynamic>>(assignments, (value) => value.toMap()),
      'directoryId': directoryId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'principalType': ?principalType,
      'targetId': ?targetId,
      'targetType': ?targetType,
    };
  }

  factory GetAccessAssignmentsResult.fromMap(Map<String, dynamic> map) {
    return GetAccessAssignmentsResult(
      accessConfigurationId: map['accessConfigurationId'] == null ? null : map['accessConfigurationId'] as String,
      assignments: pulumi.Input.decodeList<GetAccessAssignmentsAssignment>(map['assignments'], (value) => GetAccessAssignmentsAssignment.fromMap((value as Map).cast<String, dynamic>())),
      directoryId: map['directoryId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      principalType: map['principalType'] == null ? null : map['principalType'] as String,
      targetId: map['targetId'] == null ? null : map['targetId'] as String,
      targetType: map['targetType'] == null ? null : map['targetType'] as String,
    );
  }
}

