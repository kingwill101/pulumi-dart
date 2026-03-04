// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_issue_code_enum_value_response.dart';

/// Definition of ClusterIssue
class ClusterIssueResponse {
  /// &lt;p&gt;The error code of the issue.&lt;/p&gt;
  final pulumi.Input<ClusterIssueCodeEnumValueResponse>? code;

  /// &lt;p&gt;A description of the issue.&lt;/p&gt;
  final pulumi.Input<String>? message;

  /// &lt;p&gt;The resource IDs that the issue relates to.&lt;/p&gt;
  final pulumi.Input<List<String>>? resourceIds;

  /// Creates a new [ClusterIssueResponse].
  /// [code] &lt;p&gt;The error code of the issue.&lt;/p&gt;
  /// [message] &lt;p&gt;A description of the issue.&lt;/p&gt;
  /// [resourceIds] &lt;p&gt;The resource IDs that the issue relates to.&lt;/p&gt;
  ClusterIssueResponse({this.code, this.message, this.resourceIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterIssueCodeEnumValueResponse,
            Map<String, dynamic>
          >(code, (value) => value.toMap()),
      'message': ?message,
      'resourceIds': ?resourceIds,
    };
  }

  factory ClusterIssueResponse.fromMap(Map<String, dynamic> map) {
    return ClusterIssueResponse(
      code: (() {
        final guardedValue = map['code'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterIssueCodeEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceIds: (() {
        final guardedValue = map['resourceIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
