// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclLoggingConfigurationRedactedFieldSingleHeader {
  /// Name of the query header to redact. This setting must be provided in lowercase characters.
  final pulumi.Input<String> name;

  /// Creates a new [WebAclLoggingConfigurationRedactedFieldSingleHeader].
  /// [name] Name of the query header to redact. This setting must be provided in lowercase characters.
  const WebAclLoggingConfigurationRedactedFieldSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory WebAclLoggingConfigurationRedactedFieldSingleHeader.fromMap(Map<String, dynamic> map) {
    return WebAclLoggingConfigurationRedactedFieldSingleHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

