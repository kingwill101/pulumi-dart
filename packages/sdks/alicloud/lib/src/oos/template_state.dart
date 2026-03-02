// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Template resources.
class TemplateState {
  /// When deleting a template, whether to delete its related executions. Default to `false`.
  final pulumi.Input<bool>? autoDeleteExecutions;
  /// The content of the template. The template must be in the JSON or YAML format. Maximum size: 64 KB.
  final pulumi.Input<String>? content;
  /// The creator of the template.
  final pulumi.Input<String>? createdBy;
  /// The time when the template is created.
  final pulumi.Input<String>? createdDate;
  /// The description of the template.
  final pulumi.Input<String>? description;
  /// Is it triggered successfully.
  final pulumi.Input<bool>? hasTrigger;
  /// The ID of resource group which the template belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The sharing type of the template. The sharing type of templates created by users are set to Private. The sharing type of common templates provided by OOS are set to Public.
  final pulumi.Input<String>? shareType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The format of the template. The format can be JSON or YAML. The system automatically identifies the format.
  final pulumi.Input<String>? templateFormat;
  /// The id of OOS Template.
  final pulumi.Input<String>? templateId;
  /// The name of the template. The template name can be up to 200 characters in length. The name can contain letters, digits, hyphens (-), and underscores (_). It cannot start with `ALIYUN`, `ACS`, `ALIBABA`, or `ALICLOUD`.
  final pulumi.Input<String>? templateName;
  /// The type of OOS Template. `Automation` means the implementation of Alibaba Cloud API template, `Package` means represents a template for installing software.
  final pulumi.Input<String>? templateType;
  /// The version of OOS Template.
  final pulumi.Input<String>? templateVersion;
  /// The user who updated the template.
  final pulumi.Input<String>? updatedBy;
  /// The time when the template was updated.
  final pulumi.Input<String>? updatedDate;
  /// The name of template version.
  final pulumi.Input<String>? versionName;

  /// Creates a new [TemplateState].
  /// [autoDeleteExecutions] When deleting a template, whether to delete its related executions. Default to `false`.
  /// [content] The content of the template. The template must be in the JSON or YAML format. Maximum size: 64 KB.
  /// [createdBy] The creator of the template.
  /// [createdDate] The time when the template is created.
  /// [description] The description of the template.
  /// [hasTrigger] Is it triggered successfully.
  /// [resourceGroupId] The ID of resource group which the template belongs.
  /// [shareType] The sharing type of the template. The sharing type of templates created by users are set to Private. The sharing type of common templates provided by OOS are set to Public.
  /// [tags] A mapping of tags to assign to the resource.
  /// [templateFormat] The format of the template. The format can be JSON or YAML. The system automatically identifies the format.
  /// [templateId] The id of OOS Template.
  /// [templateName] The name of the template. The template name can be up to 200 characters in length. The name can contain letters, digits, hyphens (-), and underscores (_). It cannot start with `ALIYUN`, `ACS`, `ALIBABA`, or `ALICLOUD`.
  /// [templateType] The type of OOS Template. `Automation` means the implementation of Alibaba Cloud API template, `Package` means represents a template for installing software.
  /// [templateVersion] The version of OOS Template.
  /// [updatedBy] The user who updated the template.
  /// [updatedDate] The time when the template was updated.
  /// [versionName] The name of template version.
  TemplateState({
    this.autoDeleteExecutions,
    this.content,
    this.createdBy,
    this.createdDate,
    this.description,
    this.hasTrigger,
    this.resourceGroupId,
    this.shareType,
    this.tags,
    this.templateFormat,
    this.templateId,
    this.templateName,
    this.templateType,
    this.templateVersion,
    this.updatedBy,
    this.updatedDate,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteExecutions': ?autoDeleteExecutions,
      'content': ?content,
      'createdBy': ?createdBy,
      'createdDate': ?createdDate,
      'description': ?description,
      'hasTrigger': ?hasTrigger,
      'resourceGroupId': ?resourceGroupId,
      'shareType': ?shareType,
      'tags': ?tags,
      'templateFormat': ?templateFormat,
      'templateId': ?templateId,
      'templateName': ?templateName,
      'templateType': ?templateType,
      'templateVersion': ?templateVersion,
      'updatedBy': ?updatedBy,
      'updatedDate': ?updatedDate,
      'versionName': ?versionName,
    };
  }

  factory TemplateState.fromMap(Map<String, dynamic> map) {
    return TemplateState(
      autoDeleteExecutions: map['autoDeleteExecutions'] == null ? null : (map['autoDeleteExecutions'] as bool).input(),
      content: map['content'] == null ? null : (map['content'] as String).input(),
      createdBy: map['createdBy'] == null ? null : (map['createdBy'] as String).input(),
      createdDate: map['createdDate'] == null ? null : (map['createdDate'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      hasTrigger: map['hasTrigger'] == null ? null : (map['hasTrigger'] as bool).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      shareType: map['shareType'] == null ? null : (map['shareType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      templateFormat: map['templateFormat'] == null ? null : (map['templateFormat'] as String).input(),
      templateId: map['templateId'] == null ? null : (map['templateId'] as String).input(),
      templateName: map['templateName'] == null ? null : (map['templateName'] as String).input(),
      templateType: map['templateType'] == null ? null : (map['templateType'] as String).input(),
      templateVersion: map['templateVersion'] == null ? null : (map['templateVersion'] as String).input(),
      updatedBy: map['updatedBy'] == null ? null : (map['updatedBy'] as String).input(),
      updatedDate: map['updatedDate'] == null ? null : (map['updatedDate'] as String).input(),
      versionName: map['versionName'] == null ? null : (map['versionName'] as String).input(),
    );
  }
}

