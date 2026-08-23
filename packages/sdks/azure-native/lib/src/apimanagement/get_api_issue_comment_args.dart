// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_api_issue_comment_args_doc}
/// Arguments for getApiIssueComment.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_api_issue_comment_args_doc}
class GetApiIssueCommentArgs {
  /// API identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> apiId;
  /// Comment identifier within an Issue. Must be unique in the current Issue.
  final pulumi.Input<String> commentId;
  /// Issue identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> issueId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetApiIssueCommentArgs].
  /// [apiId] API identifier. Must be unique in the current API Management service instance.
  /// [commentId] Comment identifier within an Issue. Must be unique in the current Issue.
  /// [issueId] Issue identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  const GetApiIssueCommentArgs({
    required this.apiId,
    required this.commentId,
    required this.issueId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'commentId': commentId,
      'issueId': issueId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetApiIssueCommentArgs.fromMap(Map<String, dynamic> map) {
    return GetApiIssueCommentArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      commentId: pulumi.Input.fromValue(map['commentId'] as String),
      issueId: pulumi.Input.fromValue(map['issueId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
