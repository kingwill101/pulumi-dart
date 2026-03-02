// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_issue_code_enum_value_response.dart';

/// Definition of ClusterIssue
class ClusterIssueResponse {
  /// <p>The error code of the issue.</p>
  final pulumi.Input<ClusterIssueCodeEnumValueResponse>? code;
  /// <p>A description of the issue.</p>
  final pulumi.Input<String>? message;
  /// <p>The resource IDs that the issue relates to.</p>
  final pulumi.Input<List<String>>? resourceIds;

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
      'code': ?pulumi.Input.mapOptionalInputValue<ClusterIssueCodeEnumValueResponse, Map<String, dynamic>>(code, (value) => value.toMap()),
      'message': ?message,
      'resourceIds': ?resourceIds,
    };
  }

  factory ClusterIssueResponse.fromMap(Map<String, dynamic> map) {
    return ClusterIssueResponse(
      code: map['code'] == null ? null : (ClusterIssueCodeEnumValueResponse.fromMap((map['code']! as Map).cast<String, dynamic>())).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      resourceIds: map['resourceIds'] == null ? null : ((map['resourceIds']! as List).cast<String>()).input(),
    );
  }
}

