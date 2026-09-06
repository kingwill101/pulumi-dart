// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_issue_attachment_args_doc}
/// The set of arguments for ApiIssueAttachment.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_issue_attachment_args_doc}
class ApiIssueAttachmentArgs {
  /// API identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> apiId;
  /// Attachment identifier within an Issue. Must be unique in the current Issue.
  final pulumi.Input<String?>? attachmentId;
  /// An HTTP link or Base64-encoded binary data.
  final pulumi.Input<String> content;
  /// Either 'link' if content is provided via an HTTP link or the MIME type of the Base64-encoded binary data provided in the 'content' property.
  final pulumi.Input<String> contentFormat;
  /// Issue identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> issueId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Filename by which the binary data will be saved.
  final pulumi.Input<String> title;

  /// Creates a new [ApiIssueAttachmentArgs].
  /// [apiId] API identifier. Must be unique in the current API Management service instance.
  /// [attachmentId] Attachment identifier within an Issue. Must be unique in the current Issue.
  /// [content] An HTTP link or Base64-encoded binary data.
  /// [contentFormat] Either 'link' if content is provided via an HTTP link or the MIME type of the Base64-encoded binary data provided in the 'content' property.
  /// [issueId] Issue identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [title] Filename by which the binary data will be saved.
  const ApiIssueAttachmentArgs({
    required this.apiId,
    this.attachmentId,
    required this.content,
    required this.contentFormat,
    required this.issueId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'attachmentId': ?attachmentId,
      'content': content,
      'contentFormat': contentFormat,
      'issueId': issueId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'title': title,
    };
  }

  factory ApiIssueAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ApiIssueAttachmentArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      attachmentId: (() { final guardedValue = map['attachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: pulumi.Input.fromValue(map['content'] as String),
      contentFormat: pulumi.Input.fromValue(map['contentFormat'] as String),
      issueId: pulumi.Input.fromValue(map['issueId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
