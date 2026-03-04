// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTemplatesTemplate {
  /// The category of template.
  final pulumi.Input<String> category;

  /// The creator of the template.
  final pulumi.Input<String> createdBy;

  /// The template whose creation time is less than or equal to the specified time. The format is: YYYY-MM-DDThh:mm::ssZ.
  final pulumi.Input<String> createdDate;

  /// Description of the OOS Template.
  final pulumi.Input<String> description;

  /// Is it triggered successfully.
  final pulumi.Input<bool> hasTrigger;

  /// ID of the OOS Template. The value is same as template_name.
  final pulumi.Input<String> id;

  /// The sharing type of the template. Valid values: `Private`, `Public`.
  final pulumi.Input<String> shareType;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// The format of the template. Valid values: `JSON`, `YAML`.
  final pulumi.Input<String> templateFormat;

  /// ID of the OOS Template resource.
  final pulumi.Input<String> templateId;

  /// Name of the OOS Template.
  final pulumi.Input<String> templateName;

  /// The type of OOS Template.
  final pulumi.Input<String> templateType;

  /// Version of the OOS Template.
  final pulumi.Input<String> templateVersion;

  /// The user who updated the template.
  final pulumi.Input<String> updatedBy;

  /// The time when the template was updated.
  final pulumi.Input<String> updatedDate;

  /// Creates a new [GetTemplatesTemplate].
  /// [category] The category of template.
  /// [createdBy] The creator of the template.
  /// [createdDate] The template whose creation time is less than or equal to the specified time. The format is: YYYY-MM-DDThh:mm::ssZ.
  /// [description] Description of the OOS Template.
  /// [hasTrigger] Is it triggered successfully.
  /// [id] ID of the OOS Template. The value is same as template_name.
  /// [shareType] The sharing type of the template. Valid values: `Private`, `Public`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [templateFormat] The format of the template. Valid values: `JSON`, `YAML`.
  /// [templateId] ID of the OOS Template resource.
  /// [templateName] Name of the OOS Template.
  /// [templateType] The type of OOS Template.
  /// [templateVersion] Version of the OOS Template.
  /// [updatedBy] The user who updated the template.
  /// [updatedDate] The time when the template was updated.
  GetTemplatesTemplate({
    required this.category,
    required this.createdBy,
    required this.createdDate,
    required this.description,
    required this.hasTrigger,
    required this.id,
    required this.shareType,
    required this.tags,
    required this.templateFormat,
    required this.templateId,
    required this.templateName,
    required this.templateType,
    required this.templateVersion,
    required this.updatedBy,
    required this.updatedDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'createdBy': createdBy,
      'createdDate': createdDate,
      'description': description,
      'hasTrigger': hasTrigger,
      'id': id,
      'shareType': shareType,
      'tags': tags,
      'templateFormat': templateFormat,
      'templateId': templateId,
      'templateName': templateName,
      'templateType': templateType,
      'templateVersion': templateVersion,
      'updatedBy': updatedBy,
      'updatedDate': updatedDate,
    };
  }

  factory GetTemplatesTemplate.fromMap(Map<String, dynamic> map) {
    return GetTemplatesTemplate(
      category: pulumi.Input.fromValue(map['category'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      createdDate: pulumi.Input.fromValue(map['createdDate'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      hasTrigger: pulumi.Input.fromValue(map['hasTrigger'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      shareType: pulumi.Input.fromValue(map['shareType'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      templateFormat: pulumi.Input.fromValue(map['templateFormat'] as String),
      templateId: pulumi.Input.fromValue(map['templateId'] as String),
      templateName: pulumi.Input.fromValue(map['templateName'] as String),
      templateType: pulumi.Input.fromValue(map['templateType'] as String),
      templateVersion: pulumi.Input.fromValue(map['templateVersion'] as String),
      updatedBy: pulumi.Input.fromValue(map['updatedBy'] as String),
      updatedDate: pulumi.Input.fromValue(map['updatedDate'] as String),
    );
  }
}
