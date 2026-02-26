// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../email_template_email_template/email_template_email_template.dart';

/// The set of arguments for EmailTemplate.
class EmailTemplateArgs {
  /// Specifies the content and settings for a message template that can be used in messages that are sent through the email channel. See Email Template
  final Input<List<EmailTemplateEmailTemplate>>? emailTemplates;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<Map<String, String>>? tags;

  /// name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
  final Input<String> templateName;

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
      map['emailTemplates'] = Input.mapOptionalInputValue<
              List<EmailTemplateEmailTemplate>, List<Map<String, dynamic>>>(
          emailTemplatesValue,
          (value) => Input.encodeList<EmailTemplateEmailTemplate,
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
      emailTemplates: Input.asOptionalInput<List<EmailTemplateEmailTemplate>>(
          map['emailTemplates']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      templateName: Input.asInput<String>(map['templateName']),
    );
  }
}
