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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? html,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? subject,
    pulumi.Output<String>? text,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      html = pulumi.Input.asOptionalInput<String>(html),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      subject = pulumi.Input.asOptionalInput<String>(subject),
      text = pulumi.Input.asOptionalInput<String>(text);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      html: map['html'] == null ? null : pulumi.Output.create<String>(map['html'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subject: map['subject'] == null ? null : pulumi.Output.create<String>(map['subject'] as String),
      text: map['text'] == null ? null : pulumi.Output.create<String>(map['text'] as String),
    );
  }
}

