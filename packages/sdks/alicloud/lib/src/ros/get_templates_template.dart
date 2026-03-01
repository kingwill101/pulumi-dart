// ignore_for_file: unused_element, unnecessary_cast


class GetTemplatesTemplate {
  /// The ID of the change set.
  final String changeSetId;
  /// The description of the template. The description can be up to 256 characters in length.
  final String description;
  /// The ID of the Template.
  final String id;
  /// Share Type.
  final String shareType;
  /// The name of the stack group. The name must be unique in a region.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  final String stackGroupName;
  /// The ID of the stack.
  final String stackId;
  /// Tags.
  final Map<String, String> tags;
  /// The structure that contains the template body. The template body must be 1 to 524,288 bytes in length.  If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.  You must specify one of the TemplateBody and TemplateURL parameters, but you cannot specify both of them.
  final String templateBody;
  /// The ID of the template.
  final String templateId;
  /// The name of the template.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  final String templateName;
  /// Template Version.
  final String templateVersion;

  /// Creates a new [GetTemplatesTemplate].
  /// [changeSetId] The ID of the change set.
  /// [description] The description of the template. The description can be up to 256 characters in length.
  /// [id] The ID of the Template.
  /// [shareType] Share Type.
  /// [stackGroupName] The name of the stack group. The name must be unique in a region.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  /// [stackId] The ID of the stack.
  /// [tags] Tags.
  /// [templateBody] The structure that contains the template body. The template body must be 1 to 524,288 bytes in length.  If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.  You must specify one of the TemplateBody and TemplateURL parameters, but you cannot specify both of them.
  /// [templateId] The ID of the template.
  /// [templateName] The name of the template.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  /// [templateVersion] Template Version.
  GetTemplatesTemplate({
    required this.changeSetId,
    required this.description,
    required this.id,
    required this.shareType,
    required this.stackGroupName,
    required this.stackId,
    required this.tags,
    required this.templateBody,
    required this.templateId,
    required this.templateName,
    required this.templateVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeSetId': changeSetId,
      'description': description,
      'id': id,
      'shareType': shareType,
      'stackGroupName': stackGroupName,
      'stackId': stackId,
      'tags': tags,
      'templateBody': templateBody,
      'templateId': templateId,
      'templateName': templateName,
      'templateVersion': templateVersion,
    };
  }

  factory GetTemplatesTemplate.fromMap(Map<String, dynamic> map) {
    return GetTemplatesTemplate(
      changeSetId: map['changeSetId'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      shareType: map['shareType'] as String,
      stackGroupName: map['stackGroupName'] as String,
      stackId: map['stackId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      templateBody: map['templateBody'] as String,
      templateId: map['templateId'] as String,
      templateName: map['templateName'] as String,
      templateVersion: map['templateVersion'] as String,
    );
  }
}

