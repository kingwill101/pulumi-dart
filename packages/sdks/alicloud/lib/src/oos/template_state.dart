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
      autoDeleteExecutions: (() {
        final guardedValue = map['autoDeleteExecutions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdBy: (() {
        final guardedValue = map['createdBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdDate: (() {
        final guardedValue = map['createdDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hasTrigger: (() {
        final guardedValue = map['hasTrigger'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shareType: (() {
        final guardedValue = map['shareType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      templateFormat: (() {
        final guardedValue = map['templateFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateId: (() {
        final guardedValue = map['templateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateName: (() {
        final guardedValue = map['templateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateType: (() {
        final guardedValue = map['templateType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateVersion: (() {
        final guardedValue = map['templateVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updatedBy: (() {
        final guardedValue = map['updatedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updatedDate: (() {
        final guardedValue = map['updatedDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      versionName: (() {
        final guardedValue = map['versionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
