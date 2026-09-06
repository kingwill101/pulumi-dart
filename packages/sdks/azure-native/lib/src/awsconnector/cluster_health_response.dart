// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_issue_response.dart';

/// Definition of ClusterHealth
class ClusterHealthResponse {
  /// &lt;p&gt;An object representing the health issues of your local Amazon EKS cluster on an Amazon Web Services Outpost.&lt;/p&gt;
  final pulumi.Input<List<ClusterIssueResponse>?>? issues;

  /// Creates a new [ClusterHealthResponse].
  /// [issues] &lt;p&gt;An object representing the health issues of your local Amazon EKS cluster on an Amazon Web Services Outpost.&lt;/p&gt;
  const ClusterHealthResponse({
    this.issues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issues': ?pulumi.Input.mapOptionalInputValue<List<ClusterIssueResponse>, List<Map<String, dynamic>>>(issues, (value) => pulumi.Input.encodeList<ClusterIssueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterHealthResponse.fromMap(Map<String, dynamic> map) {
    return ClusterHealthResponse(
      issues: (() { final guardedValue = map['issues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterIssueResponse>(guardedValue, (value) => ClusterIssueResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
