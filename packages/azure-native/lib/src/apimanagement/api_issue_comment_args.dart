// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_issue_comment_args_doc}
/// The set of arguments for ApiIssueComment.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_issue_comment_args_doc}
class ApiIssueCommentArgs {
  /// API identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> apiId;
  /// Comment identifier within an Issue. Must be unique in the current Issue.
  final pulumi.Input<String>? commentId;
  /// Date and time when the comment was created.
  final pulumi.Input<String>? createdDate;
  /// Issue identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> issueId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Comment text.
  final pulumi.Input<String> text;
  /// A resource identifier for the user who left the comment.
  final pulumi.Input<String> userId;

  /// Creates a new [ApiIssueCommentArgs].
  /// [apiId] API identifier. Must be unique in the current API Management service instance.
  /// [commentId] Comment identifier within an Issue. Must be unique in the current Issue.
  /// [createdDate] Date and time when the comment was created.
  /// [issueId] Issue identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [text] Comment text.
  /// [userId] A resource identifier for the user who left the comment.
  ApiIssueCommentArgs({
    required String apiId,
    String? commentId,
    String? createdDate,
    required String issueId,
    required String resourceGroupName,
    required String serviceName,
    required String text,
    required String userId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      commentId = pulumi.Input.asOptionalInput<String>(commentId),
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      issueId = pulumi.Input.asInput<String>(issueId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      text = pulumi.Input.asInput<String>(text),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'commentId': ?commentId,
      'createdDate': ?createdDate,
      'issueId': issueId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'text': text,
      'userId': userId,
    };
  }

  factory ApiIssueCommentArgs.fromMap(Map<String, dynamic> map) {
    return ApiIssueCommentArgs(
      apiId: map['apiId'] as String,
      commentId: map['commentId'] == null ? null : map['commentId'] as String,
      createdDate: map['createdDate'] == null ? null : map['createdDate'] as String,
      issueId: map['issueId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      text: map['text'] as String,
      userId: map['userId'] as String,
    );
  }
}

