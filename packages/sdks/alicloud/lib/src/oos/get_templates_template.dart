// ignore_for_file: unused_element, unnecessary_cast


class GetTemplatesTemplate {
  /// The category of template.
  final String category;
  /// The creator of the template.
  final String createdBy;
  /// The template whose creation time is less than or equal to the specified time. The format is: YYYY-MM-DDThh:mm::ssZ.
  final String createdDate;
  /// Description of the OOS Template.
  final String description;
  /// Is it triggered successfully.
  final bool hasTrigger;
  /// ID of the OOS Template. The value is same as template_name.
  final String id;
  /// The sharing type of the template. Valid values: `Private`, `Public`.
  final String shareType;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The format of the template. Valid values: `JSON`, `YAML`.
  final String templateFormat;
  /// ID of the OOS Template resource.
  final String templateId;
  /// Name of the OOS Template.
  final String templateName;
  /// The type of OOS Template.
  final String templateType;
  /// Version of the OOS Template.
  final String templateVersion;
  /// The user who updated the template.
  final String updatedBy;
  /// The time when the template was updated.
  final String updatedDate;

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
      category: map['category'] as String,
      createdBy: map['createdBy'] as String,
      createdDate: map['createdDate'] as String,
      description: map['description'] as String,
      hasTrigger: map['hasTrigger'] as bool,
      id: map['id'] as String,
      shareType: map['shareType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      templateFormat: map['templateFormat'] as String,
      templateId: map['templateId'] as String,
      templateName: map['templateName'] as String,
      templateType: map['templateType'] as String,
      templateVersion: map['templateVersion'] as String,
      updatedBy: map['updatedBy'] as String,
      updatedDate: map['updatedDate'] as String,
    );
  }
}

