// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_issue_args_doc}
/// The set of arguments for ApiIssue.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_issue_args_doc}
class ApiIssueArgs {
  /// A resource identifier for the API the issue was created for.
  final pulumi.Input<String> apiId;
  /// Date and time when the issue was created.
  final pulumi.Input<String>? createdDate;
  /// Text describing the issue.
  final pulumi.Input<String> description;
  /// Issue identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? issueId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Status of the issue.
  final pulumi.Input<String>? state;
  /// The issue title.
  final pulumi.Input<String> title;
  /// A resource identifier for the user created the issue.
  final pulumi.Input<String> userId;

  /// Creates a new [ApiIssueArgs].
  /// [apiId] A resource identifier for the API the issue was created for.
  /// [createdDate] Date and time when the issue was created.
  /// [description] Text describing the issue.
  /// [issueId] Issue identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [state] Status of the issue.
  /// [title] The issue title.
  /// [userId] A resource identifier for the user created the issue.
  ApiIssueArgs({
    required String apiId,
    String? createdDate,
    required String description,
    String? issueId,
    required String resourceGroupName,
    required String serviceName,
    String? state,
    required String title,
    required String userId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      description = pulumi.Input.asInput<String>(description),
      issueId = pulumi.Input.asOptionalInput<String>(issueId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      state = pulumi.Input.asOptionalInput<String>(state),
      title = pulumi.Input.asInput<String>(title),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'createdDate': ?createdDate,
      'description': description,
      'issueId': ?issueId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'state': ?state,
      'title': title,
      'userId': userId,
    };
  }

  factory ApiIssueArgs.fromMap(Map<String, dynamic> map) {
    return ApiIssueArgs(
      apiId: map['apiId'] as String,
      createdDate: map['createdDate'] == null ? null : map['createdDate'] as String,
      description: map['description'] as String,
      issueId: map['issueId'] == null ? null : map['issueId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      title: map['title'] as String,
      userId: map['userId'] as String,
    );
  }
}

