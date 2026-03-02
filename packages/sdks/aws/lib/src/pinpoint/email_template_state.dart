// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_template_email_template.dart';

/// Input properties used for looking up and filtering EmailTemplate resources.
class EmailTemplateState {
  /// Amazon Resource Name (ARN) of the message template.
  final pulumi.Input<String>? arn;
  /// Specifies the content and settings for a message template that can be used in messages that are sent through the email channel. See Email Template
  final pulumi.Input<List<EmailTemplateEmailTemplate>>? emailTemplates;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
  final pulumi.Input<String>? templateName;

  /// Creates a new [EmailTemplateState].
  /// [arn] Amazon Resource Name (ARN) of the message template.
  /// [emailTemplates] Specifies the content and settings for a message template that can be used in messages that are sent through the email channel. See Email Template
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  /// [templateName] name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
  EmailTemplateState({
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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      emailTemplates: map['emailTemplates'] == null ? null : (pulumi.Input.decodeList<EmailTemplateEmailTemplate>(map['emailTemplates'], (value) => EmailTemplateEmailTemplate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      templateName: map['templateName'] == null ? null : (map['templateName'] as String).input(),
    );
  }
}

