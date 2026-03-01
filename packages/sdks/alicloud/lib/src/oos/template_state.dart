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
    pulumi.Output<bool>? autoDeleteExecutions,
    pulumi.Output<String>? content,
    pulumi.Output<String>? createdBy,
    pulumi.Output<String>? createdDate,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? hasTrigger,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? shareType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? templateFormat,
    pulumi.Output<String>? templateId,
    pulumi.Output<String>? templateName,
    pulumi.Output<String>? templateType,
    pulumi.Output<String>? templateVersion,
    pulumi.Output<String>? updatedBy,
    pulumi.Output<String>? updatedDate,
    pulumi.Output<String>? versionName,
  }) :
      autoDeleteExecutions = pulumi.Input.asOptionalInput<bool>(autoDeleteExecutions),
      content = pulumi.Input.asOptionalInput<String>(content),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      description = pulumi.Input.asOptionalInput<String>(description),
      hasTrigger = pulumi.Input.asOptionalInput<bool>(hasTrigger),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      shareType = pulumi.Input.asOptionalInput<String>(shareType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateFormat = pulumi.Input.asOptionalInput<String>(templateFormat),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      templateName = pulumi.Input.asOptionalInput<String>(templateName),
      templateType = pulumi.Input.asOptionalInput<String>(templateType),
      templateVersion = pulumi.Input.asOptionalInput<String>(templateVersion),
      updatedBy = pulumi.Input.asOptionalInput<String>(updatedBy),
      updatedDate = pulumi.Input.asOptionalInput<String>(updatedDate),
      versionName = pulumi.Input.asOptionalInput<String>(versionName);

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
      autoDeleteExecutions: map['autoDeleteExecutions'] == null ? null : pulumi.Output.create<bool>(map['autoDeleteExecutions'] as bool),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      createdDate: map['createdDate'] == null ? null : pulumi.Output.create<String>(map['createdDate'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      hasTrigger: map['hasTrigger'] == null ? null : pulumi.Output.create<bool>(map['hasTrigger'] as bool),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      shareType: map['shareType'] == null ? null : pulumi.Output.create<String>(map['shareType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateFormat: map['templateFormat'] == null ? null : pulumi.Output.create<String>(map['templateFormat'] as String),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
      templateName: map['templateName'] == null ? null : pulumi.Output.create<String>(map['templateName'] as String),
      templateType: map['templateType'] == null ? null : pulumi.Output.create<String>(map['templateType'] as String),
      templateVersion: map['templateVersion'] == null ? null : pulumi.Output.create<String>(map['templateVersion'] as String),
      updatedBy: map['updatedBy'] == null ? null : pulumi.Output.create<String>(map['updatedBy'] as String),
      updatedDate: map['updatedDate'] == null ? null : pulumi.Output.create<String>(map['updatedDate'] as String),
      versionName: map['versionName'] == null ? null : pulumi.Output.create<String>(map['versionName'] as String),
    );
  }
}

