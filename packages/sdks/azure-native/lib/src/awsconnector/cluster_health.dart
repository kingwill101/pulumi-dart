// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_issue.dart';

/// Definition of ClusterHealth
class ClusterHealth {
  /// &lt;p&gt;An object representing the health issues of your local Amazon EKS cluster on an Amazon Web Services Outpost.&lt;/p&gt;
  final pulumi.Input<List<ClusterIssue>>? issues;

  /// Creates a new [ClusterHealth].
  /// [issues] &lt;p&gt;An object representing the health issues of your local Amazon EKS cluster on an Amazon Web Services Outpost.&lt;/p&gt;
  ClusterHealth({this.issues});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issues':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterIssue>,
            List<Map<String, dynamic>>
          >(
            issues,
            (value) =>
                pulumi.Input.encodeList<ClusterIssue, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory ClusterHealth.fromMap(Map<String, dynamic> map) {
    return ClusterHealth(
      issues: (() {
        final guardedValue = map['issues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterIssue>(
            guardedValue,
            (value) =>
                ClusterIssue.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
