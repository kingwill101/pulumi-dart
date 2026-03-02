// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_template_template_args_doc}
/// The set of arguments for Template.
/// {@endtemplate}
/// {@macro pulumi_oos_template_template_args_doc}
class TemplateArgs {
  /// When deleting a template, whether to delete its related executions. Default to `false`.
  final pulumi.Input<bool>? autoDeleteExecutions;
  /// The content of the template. The template must be in the JSON or YAML format. Maximum size: 64 KB.
  final pulumi.Input<String> content;
  /// The ID of resource group which the template belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the template. The template name can be up to 200 characters in length. The name can contain letters, digits, hyphens (-), and underscores (_). It cannot start with `ALIYUN`, `ACS`, `ALIBABA`, or `ALICLOUD`.
  final pulumi.Input<String> templateName;
  /// The name of template version.
  final pulumi.Input<String>? versionName;

  /// Creates a new [TemplateArgs].
  /// [autoDeleteExecutions] When deleting a template, whether to delete its related executions. Default to `false`.
  /// [content] The content of the template. The template must be in the JSON or YAML format. Maximum size: 64 KB.
  /// [resourceGroupId] The ID of resource group which the template belongs.
  /// [tags] A mapping of tags to assign to the resource.
  /// [templateName] The name of the template. The template name can be up to 200 characters in length. The name can contain letters, digits, hyphens (-), and underscores (_). It cannot start with `ALIYUN`, `ACS`, `ALIBABA`, or `ALICLOUD`.
  /// [versionName] The name of template version.
  TemplateArgs({
    this.autoDeleteExecutions,
    required this.content,
    this.resourceGroupId,
    this.tags,
    required this.templateName,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteExecutions': ?autoDeleteExecutions,
      'content': content,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'templateName': templateName,
      'versionName': ?versionName,
    };
  }

  factory TemplateArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArgs(
      autoDeleteExecutions: map['autoDeleteExecutions'] == null ? null : (map['autoDeleteExecutions'] as bool).input(),
      content: (map['content'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      templateName: (map['templateName'] as String).input(),
      versionName: map['versionName'] == null ? null : (map['versionName'] as String).input(),
    );
  }
}

