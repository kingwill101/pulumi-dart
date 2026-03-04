// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTemplatesTemplate {
  /// The ID of the change set.
  final pulumi.Input<String> changeSetId;

  /// The description of the template. The description can be up to 256 characters in length.
  final pulumi.Input<String> description;

  /// The ID of the Template.
  final pulumi.Input<String> id;

  /// Share Type.
  final pulumi.Input<String> shareType;

  /// The name of the stack group. The name must be unique in a region.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  final pulumi.Input<String> stackGroupName;

  /// The ID of the stack.
  final pulumi.Input<String> stackId;

  /// Tags.
  final pulumi.Input<Map<String, String>> tags;

  /// The structure that contains the template body. The template body must be 1 to 524,288 bytes in length.  If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.  You must specify one of the TemplateBody and TemplateURL parameters, but you cannot specify both of them.
  final pulumi.Input<String> templateBody;

  /// The ID of the template.
  final pulumi.Input<String> templateId;

  /// The name of the template.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  final pulumi.Input<String> templateName;

  /// Template Version.
  final pulumi.Input<String> templateVersion;

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
      changeSetId: pulumi.Input.fromValue(map['changeSetId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      shareType: pulumi.Input.fromValue(map['shareType'] as String),
      stackGroupName: pulumi.Input.fromValue(map['stackGroupName'] as String),
      stackId: pulumi.Input.fromValue(map['stackId'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      templateBody: pulumi.Input.fromValue(map['templateBody'] as String),
      templateId: pulumi.Input.fromValue(map['templateId'] as String),
      templateName: pulumi.Input.fromValue(map['templateName'] as String),
      templateVersion: pulumi.Input.fromValue(map['templateVersion'] as String),
    );
  }
}
