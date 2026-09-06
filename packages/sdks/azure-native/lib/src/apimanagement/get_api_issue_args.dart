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
  final pulumi.Input<bool?>? expandCommentsAttachments;
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
  const GetApiIssueArgs({
    required this.apiId,
    this.expandCommentsAttachments,
    required this.issueId,
    required this.resourceGroupName,
    required this.serviceName,
  });

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
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      expandCommentsAttachments: (() { final guardedValue = map['expandCommentsAttachments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      issueId: pulumi.Input.fromValue(map['issueId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
