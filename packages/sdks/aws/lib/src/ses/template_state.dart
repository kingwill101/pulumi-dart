// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Template resources.
class TemplateState {
  /// ARN of the SES template
  final pulumi.Input<String?>? arn;
  /// HTML body of the email. Must be less than 500KB in size, including both the text and HTML parts.
  final pulumi.Input<String?>? html;
  /// Name of the template. Cannot exceed 64 characters. You will refer to this name when you send email.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Subject line of the email.
  final pulumi.Input<String?>? subject;
  /// Email body that will be visible to recipients whose email clients do not display HTML. Must be less than 500KB in size, including both the text and HTML parts.
  final pulumi.Input<String?>? text;

  /// Creates a new [TemplateState].
  /// [arn] ARN of the SES template
  /// [html] HTML body of the email. Must be less than 500KB in size, including both the text and HTML parts.
  /// [name] Name of the template. Cannot exceed 64 characters. You will refer to this name when you send email.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subject] Subject line of the email.
  /// [text] Email body that will be visible to recipients whose email clients do not display HTML. Must be less than 500KB in size, including both the text and HTML parts.
  const TemplateState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      html: (() { final guardedValue = map['html']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
