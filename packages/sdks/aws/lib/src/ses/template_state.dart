// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Template resources.
class TemplateState {
  /// The ARN of the SES template
  final pulumi.Input<String>? arn;
  /// The HTML body of the email. Must be less than 500KB in size, including both the text and HTML parts.
  final pulumi.Input<String>? html;
  /// The name of the template. Cannot exceed 64 characters. You will refer to this name when you send email.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The subject line of the email.
  final pulumi.Input<String>? subject;
  /// The email body that will be visible to recipients whose email clients do not display HTML. Must be less than 500KB in size, including both the text and HTML parts.
  final pulumi.Input<String>? text;

  /// Creates a new [TemplateState].
  /// [arn] The ARN of the SES template
  /// [html] The HTML body of the email. Must be less than 500KB in size, including both the text and HTML parts.
  /// [name] The name of the template. Cannot exceed 64 characters. You will refer to this name when you send email.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subject] The subject line of the email.
  /// [text] The email body that will be visible to recipients whose email clients do not display HTML. Must be less than 500KB in size, including both the text and HTML parts.
  TemplateState({
    this.arn,
    this.html,
    this.name,
    this.region,
    this.subject,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'html': ?html,
      'name': ?name,
      'region': ?region,
      'subject': ?subject,
      'text': ?text,
    };
  }

  factory TemplateState.fromMap(Map<String, dynamic> map) {
    return TemplateState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      html: map['html'] == null ? null : (map['html'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      subject: map['subject'] == null ? null : (map['subject'] as String).input(),
      text: map['text'] == null ? null : (map['text'] as String).input(),
    );
  }
}

