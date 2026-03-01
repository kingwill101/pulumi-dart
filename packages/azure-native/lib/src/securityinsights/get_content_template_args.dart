// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_content_template_args_doc}
/// Arguments for getContentTemplate.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_content_template_args_doc}
class GetContentTemplateArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// template Id
  final pulumi.Input<String> templateId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetContentTemplateArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [templateId] template Id
  /// [workspaceName] The name of the workspace.
  GetContentTemplateArgs({
    required String resourceGroupName,
    required String templateId,
    required String workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      templateId = pulumi.Input.asInput<String>(templateId),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'templateId': templateId,
      'workspaceName': workspaceName,
    };
  }

  factory GetContentTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetContentTemplateArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      templateId: map['templateId'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

