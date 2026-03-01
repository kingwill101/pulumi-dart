// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_issue_code_enum_value_response.dart';

/// Definition of ClusterIssue
class ClusterIssueResponse {
  /// <p>The error code of the issue.</p>
  final ClusterIssueCodeEnumValueResponse? code;
  /// <p>A description of the issue.</p>
  final String? message;
  /// <p>The resource IDs that the issue relates to.</p>
  final List<String>? resourceIds;

  /// Creates a new [ClusterIssueResponse].
  /// [code] <p>The error code of the issue.</p>
  /// [message] <p>A description of the issue.</p>
  /// [resourceIds] <p>The resource IDs that the issue relates to.</p>
  ClusterIssueResponse({
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

  factory ClusterIssueResponse.fromMap(Map<String, dynamic> map) {
    return ClusterIssueResponse(
      code: map['code'] == null ? null : ClusterIssueCodeEnumValueResponse.fromMap((map['code'] as Map).cast<String, dynamic>()),
      message: map['message'] == null ? null : map['message'] as String,
      resourceIds: map['resourceIds'] == null ? null : (map['resourceIds'] as List).cast<String>(),
    );
  }
}

