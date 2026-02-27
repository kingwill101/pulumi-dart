// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Template.
class TemplateSesArgs {
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

  TemplateSesArgs({
    this.html,
    this.name,
    this.region,
    this.subject,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final htmlValue = html;
    if (htmlValue != null) {
      map['html'] = htmlValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final subjectValue = subject;
    if (subjectValue != null) {
      map['subject'] = subjectValue;
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory TemplateSesArgs.fromMap(Map<String, dynamic> map) {
    return TemplateSesArgs(
      html: pulumi.Input.asOptionalInput<String>(map['html']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      subject: pulumi.Input.asOptionalInput<String>(map['subject']),
      text: pulumi.Input.asOptionalInput<String>(map['text']),
    );
  }
}
