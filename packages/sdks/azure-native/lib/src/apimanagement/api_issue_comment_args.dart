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
    required pulumi.Output<String> apiId,
    pulumi.Output<String>? commentId,
    pulumi.Output<String>? createdDate,
    required pulumi.Output<String> issueId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> text,
    required pulumi.Output<String> userId,
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
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      commentId: map['commentId'] == null ? null : pulumi.Output.create<String>(map['commentId'] as String),
      createdDate: map['createdDate'] == null ? null : pulumi.Output.create<String>(map['createdDate'] as String),
      issueId: pulumi.Output.create<String>(map['issueId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      text: pulumi.Output.create<String>(map['text'] as String),
      userId: pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

