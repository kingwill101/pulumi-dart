// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_template_email_template.dart';

/// Input properties used for looking up and filtering EmailTemplate resources.
class EmailTemplateState {
  /// ARN of the message template.
  final pulumi.Input<String?>? arn;
  /// Content and settings for a message template that can be used in messages that are sent through the email channel. See below.
  final pulumi.Input<List<EmailTemplateEmailTemplate>?>? emailTemplates;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
  final pulumi.Input<String?>? templateName;

  /// Creates a new [EmailTemplateState].
  /// [arn] ARN of the message template.
  /// [emailTemplates] Content and settings for a message template that can be used in messages that are sent through the email channel. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [templateName] Name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
  const EmailTemplateState({
    this.arn,
    this.emailTemplates,
    this.region,
    this.tags,
    this.tagsAll,
    this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'emailTemplates': ?pulumi.Input.mapOptionalInputValue<List<EmailTemplateEmailTemplate>, List<Map<String, dynamic>>>(emailTemplates, (value) => pulumi.Input.encodeList<EmailTemplateEmailTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'templateName': ?templateName,
    };
  }

  factory EmailTemplateState.fromMap(Map<String, dynamic> map) {
    return EmailTemplateState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailTemplates: (() { final guardedValue = map['emailTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailTemplateEmailTemplate>(guardedValue, (value) => EmailTemplateEmailTemplate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
