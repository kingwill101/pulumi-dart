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
  GetApiIssueCommentArgs({
    required String apiId,
    required String commentId,
    required String issueId,
    required String resourceGroupName,
    required String serviceName,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      commentId = pulumi.Input.asInput<String>(commentId),
      issueId = pulumi.Input.asInput<String>(issueId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      apiId: map['apiId'] as String,
      commentId: map['commentId'] as String,
      issueId: map['issueId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

