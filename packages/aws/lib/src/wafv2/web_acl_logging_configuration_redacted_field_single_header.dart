// ignore_for_file: unused_element, unnecessary_cast


class WebAclLoggingConfigurationRedactedFieldSingleHeader {
  /// Name of the query header to redact. This setting must be provided in lowercase characters.
  final String name;

  /// Creates a new [WebAclLoggingConfigurationRedactedFieldSingleHeader].
  /// [name] Name of the query header to redact. This setting must be provided in lowercase characters.
  WebAclLoggingConfigurationRedactedFieldSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory WebAclLoggingConfigurationRedactedFieldSingleHeader.fromMap(Map<String, dynamic> map) {
    return WebAclLoggingConfigurationRedactedFieldSingleHeader(
      name: map['name'] as String,
    );
  }
}

