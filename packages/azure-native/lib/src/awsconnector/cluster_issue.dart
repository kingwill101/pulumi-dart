// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_issue_code_enum_value.dart';

/// Definition of ClusterIssue
class ClusterIssue {
  /// <p>The error code of the issue.</p>
  final ClusterIssueCodeEnumValue? code;
  /// <p>A description of the issue.</p>
  final String? message;
  /// <p>The resource IDs that the issue relates to.</p>
  final List<String>? resourceIds;

  /// Creates a new [ClusterIssue].
  /// [code] <p>The error code of the issue.</p>
  /// [message] <p>A description of the issue.</p>
  /// [resourceIds] <p>The resource IDs that the issue relates to.</p>
  ClusterIssue({
    this.code,
    this.message,
    this.resourceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code == null ? null : code!.toMap(),
      'message': ?message,
      'resourceIds': ?resourceIds,
    };
  }

  factory ClusterIssue.fromMap(Map<String, dynamic> map) {
    return ClusterIssue(
      code: map['code'] == null ? null : ClusterIssueCodeEnumValue.fromMap((map['code'] as Map).cast<String, dynamic>()),
      message: map['message'] == null ? null : map['message'] as String,
      resourceIds: map['resourceIds'] == null ? null : (map['resourceIds'] as List).cast<String>(),
    );
  }
}

