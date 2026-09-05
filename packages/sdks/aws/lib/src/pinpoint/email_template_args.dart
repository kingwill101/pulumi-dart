// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_template_email_template.dart';

/// {@template pulumi_pinpoint_email_template_email_template_args_doc}
/// The set of arguments for EmailTemplate.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_email_template_email_template_args_doc}
class EmailTemplateArgs {
  /// Content and settings for a message template that can be used in messages that are sent through the email channel. See below.
  final pulumi.Input<List<EmailTemplateEmailTemplate>?>? emailTemplates;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
  final pulumi.Input<String> templateName;

  /// Creates a new [EmailTemplateArgs].
  /// [emailTemplates] Content and settings for a message template that can be used in messages that are sent through the email channel. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [templateName] Name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
  const EmailTemplateArgs({
    this.emailTemplates,
    this.region,
    this.tags,
    required this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailTemplates': ?pulumi.Input.mapOptionalInputValue<List<EmailTemplateEmailTemplate>, List<Map<String, dynamic>>>(emailTemplates, (value) => pulumi.Input.encodeList<EmailTemplateEmailTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'templateName': templateName,
    };
  }

  factory EmailTemplateArgs.fromMap(Map<String, dynamic> map) {
    return EmailTemplateArgs(
      emailTemplates: (() { final guardedValue = map['emailTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailTemplateEmailTemplate>(guardedValue, (value) => EmailTemplateEmailTemplate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateName: pulumi.Input.fromValue(map['templateName'] as String),
    );
  }
}
