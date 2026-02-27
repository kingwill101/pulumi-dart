// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../email_template_email_template/email_template_email_template.dart';

/// The set of arguments for EmailTemplate.
class EmailTemplateArgs {
  /// Specifies the content and settings for a message template that can be used in messages that are sent through the email channel. See Email Template
  final pulumi.Input<List<EmailTemplateEmailTemplate>>? emailTemplates;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
  final pulumi.Input<String> templateName;

  EmailTemplateArgs({
    this.emailTemplates,
    this.region,
    this.tags,
    required this.templateName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailTemplatesValue = emailTemplates;
    if (emailTemplatesValue != null) {
      map['emailTemplates'] = pulumi.Input.mapOptionalInputValue<
              List<EmailTemplateEmailTemplate>, List<Map<String, dynamic>>>(
          emailTemplatesValue,
          (value) => pulumi.Input.encodeList<EmailTemplateEmailTemplate,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['templateName'] = templateName;
    return map;
  }

  factory EmailTemplateArgs.fromMap(Map<String, dynamic> map) {
    return EmailTemplateArgs(
      emailTemplates:
          pulumi.Input.asOptionalInput<List<EmailTemplateEmailTemplate>>(
              map['emailTemplates']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      templateName: pulumi.Input.asInput<String>(map['templateName']),
    );
  }
}
