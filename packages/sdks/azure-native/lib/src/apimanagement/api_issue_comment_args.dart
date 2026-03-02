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
    required this.apiId,
    this.commentId,
    this.createdDate,
    required this.issueId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.text,
    required this.userId,
  });

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
      apiId: (map['apiId'] as String).input(),
      commentId: map['commentId'] == null ? null : (map['commentId']! as String).input(),
      createdDate: map['createdDate'] == null ? null : (map['createdDate']! as String).input(),
      issueId: (map['issueId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      text: (map['text'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

