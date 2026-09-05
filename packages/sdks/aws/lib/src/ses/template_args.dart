// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_template_template_args_doc}
/// The set of arguments for Template.
/// {@endtemplate}
/// {@macro pulumi_ses_template_template_args_doc}
class TemplateArgs {
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

  /// Creates a new [TemplateArgs].
  /// [html] HTML body of the email. Must be less than 500KB in size, including both the text and HTML parts.
  /// [name] Name of the template. Cannot exceed 64 characters. You will refer to this name when you send email.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subject] Subject line of the email.
  /// [text] Email body that will be visible to recipients whose email clients do not display HTML. Must be less than 500KB in size, including both the text and HTML parts.
  const TemplateArgs({
    this.html,
    this.name,
    this.region,
    this.subject,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'html': ?html,
      'name': ?name,
      'region': ?region,
      'subject': ?subject,
      'text': ?text,
    };
  }

  factory TemplateArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArgs(
      html: (() { final guardedValue = map['html']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
