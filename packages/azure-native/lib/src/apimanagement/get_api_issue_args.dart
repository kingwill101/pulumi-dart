// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_api_issue_args_doc}
/// Arguments for getApiIssue.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_api_issue_args_doc}
class GetApiIssueArgs {
  /// API identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> apiId;
  /// Expand the comment attachments.
  final pulumi.Input<bool>? expandCommentsAttachments;
  /// Issue identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> issueId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetApiIssueArgs].
  /// [apiId] API identifier. Must be unique in the current API Management service instance.
  /// [expandCommentsAttachments] Expand the comment attachments.
  /// [issueId] Issue identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetApiIssueArgs({
    required String apiId,
    bool? expandCommentsAttachments,
    required String issueId,
    required String resourceGroupName,
    required String serviceName,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      expandCommentsAttachments = pulumi.Input.asOptionalInput<bool>(expandCommentsAttachments),
      issueId = pulumi.Input.asInput<String>(issueId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'expandCommentsAttachments': ?expandCommentsAttachments,
      'issueId': issueId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetApiIssueArgs.fromMap(Map<String, dynamic> map) {
    return GetApiIssueArgs(
      apiId: map['apiId'] as String,
      expandCommentsAttachments: map['expandCommentsAttachments'] == null ? null : map['expandCommentsAttachments'] as bool,
      issueId: map['issueId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

