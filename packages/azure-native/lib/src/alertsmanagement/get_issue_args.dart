// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alertsmanagement_get_issue_args_doc}
/// Arguments for getIssue.
/// {@endtemplate}
/// {@macro pulumi_alertsmanagement_get_issue_args_doc}
class GetIssueArgs {
  /// The name of the IssueResource
  final pulumi.Input<String> issueName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetIssueArgs].
  /// [issueName] The name of the IssueResource
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetIssueArgs({
    required String issueName,
    required String resourceUri,
  }) :
      issueName = pulumi.Input.asInput<String>(issueName),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueName': issueName,
      'resourceUri': resourceUri,
    };
  }

  factory GetIssueArgs.fromMap(Map<String, dynamic> map) {
    return GetIssueArgs(
      issueName: map['issueName'] as String,
      resourceUri: map['resourceUri'] as String,
    );
  }
}

