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
    pulumi.Output<String>? arn,
    pulumi.Output<List<EmailTemplateEmailTemplate>>? emailTemplates,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? templateName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      emailTemplates = pulumi.Input.asOptionalInput<List<EmailTemplateEmailTemplate>>(emailTemplates),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      templateName = pulumi.Input.asOptionalInput<String>(templateName);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      emailTemplates: map['emailTemplates'] == null ? null : pulumi.Output.create<List<EmailTemplateEmailTemplate>>(pulumi.Input.decodeList<EmailTemplateEmailTemplate>(map['emailTemplates'], (value) => EmailTemplateEmailTemplate.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      templateName: map['templateName'] == null ? null : pulumi.Output.create<String>(map['templateName'] as String),
    );
  }
}

