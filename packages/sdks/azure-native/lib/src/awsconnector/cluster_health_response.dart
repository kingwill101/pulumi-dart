// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_issue_response.dart';

/// Definition of ClusterHealth
class ClusterHealthResponse {
  /// <p>An object representing the health issues of your local Amazon EKS cluster on an Amazon Web Services Outpost.</p>
  final pulumi.Input<List<ClusterIssueResponse>>? issues;

  /// Creates a new [ClusterHealthResponse].
  /// [issues] <p>An object representing the health issues of your local Amazon EKS cluster on an Amazon Web Services Outpost.</p>
  ClusterHealthResponse({
    this.issues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issues': ?pulumi.Input.mapOptionalInputValue<List<ClusterIssueResponse>, List<Map<String, dynamic>>>(issues, (value) => pulumi.Input.encodeList<ClusterIssueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterHealthResponse.fromMap(Map<String, dynamic> map) {
    return ClusterHealthResponse(
      issues: map['issues'] == null ? null : (pulumi.Input.decodeList<ClusterIssueResponse>(map['issues']!, (value) => ClusterIssueResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

