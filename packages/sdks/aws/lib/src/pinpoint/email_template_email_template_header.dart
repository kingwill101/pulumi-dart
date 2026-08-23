// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EmailTemplateEmailTemplateHeader {
  /// Name of the message header. The header name can contain up to 126 characters.
  final pulumi.Input<String>? name;
  /// Value of the message header. The header value can contain up to 870 characters, including the length of any rendered attributes. For example if you add the {CreationDate} attribute, it renders as YYYY-MM-DDTHH:MM:SS.SSSZ and is 24 characters in length.
  final pulumi.Input<String>? value;

  /// Creates a new [EmailTemplateEmailTemplateHeader].
  /// [name] Name of the message header. The header name can contain up to 126 characters.
  /// [value] Value of the message header. The header value can contain up to 870 characters, including the length of any rendered attributes. For example if you add the {CreationDate} attribute, it renders as YYYY-MM-DDTHH:MM:SS.SSSZ and is 24 characters in length.
  const EmailTemplateEmailTemplateHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory EmailTemplateEmailTemplateHeader.fromMap(Map<String, dynamic> map) {
    return EmailTemplateEmailTemplateHeader(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
