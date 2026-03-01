// ignore_for_file: unused_element, unnecessary_cast


class EmailTemplateEmailTemplateHeader {
  /// Name of the message header. The header name can contain up to 126 characters.
  final String? name;
  /// Value of the message header. The header value can contain up to 870 characters, including the length of any rendered attributes. For example if you add the {CreationDate} attribute, it renders as YYYY-MM-DDTHH:MM:SS.SSSZ and is 24 characters in length.
  final String? value;

  /// Creates a new [EmailTemplateEmailTemplateHeader].
  /// [name] Name of the message header. The header name can contain up to 126 characters.
  /// [value] Value of the message header. The header value can contain up to 870 characters, including the length of any rendered attributes. For example if you add the {CreationDate} attribute, it renders as YYYY-MM-DDTHH:MM:SS.SSSZ and is 24 characters in length.
  EmailTemplateEmailTemplateHeader({
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
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

