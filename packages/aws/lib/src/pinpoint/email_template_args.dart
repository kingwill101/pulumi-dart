// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_template_email_template.dart';

/// {@template pulumi_pinpoint_email_template_email_template_args_doc}
/// The set of arguments for EmailTemplate.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_email_template_email_template_args_doc}
class EmailTemplateArgs {
  /// Specifies the content and settings for a message template that can be used in messages that are sent through the email channel. See Email Template
  final pulumi.Input<List<EmailTemplateEmailTemplate>>? emailTemplates;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
  final pulumi.Input<String> templateName;

  /// Creates a new [EmailTemplateArgs].
  /// [emailTemplates] Specifies the content and settings for a message template that can be used in messages that are sent through the email channel. See Email Template
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  /// [templateName] name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
  EmailTemplateArgs({
    List<EmailTemplateEmailTemplate>? emailTemplates,
    String? region,
    Map<String, String>? tags,
    required String templateName,
  })  : emailTemplates =
            pulumi.Input.asOptionalInput<List<EmailTemplateEmailTemplate>>(
                emailTemplates),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        templateName = pulumi.Input.asInput<String>(templateName);

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
      emailTemplates: map['emailTemplates'] == null
          ? null
          : pulumi.Input.decodeList<EmailTemplateEmailTemplate>(
              map['emailTemplates'],
              (value) => EmailTemplateEmailTemplate.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      templateName: map['templateName'] as String,
    );
  }
}
