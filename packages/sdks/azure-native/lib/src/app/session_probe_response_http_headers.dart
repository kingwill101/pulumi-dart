// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTPHeader describes a custom header to be used in HTTP probes
class SessionProbeResponseHttpHeaders {
  /// The header field name
  final pulumi.Input<String> name;
  /// The header field value
  final pulumi.Input<String> value;

  /// Creates a new [SessionProbeResponseHttpHeaders].
  /// [name] The header field name
  /// [value] The header field value
  const SessionProbeResponseHttpHeaders({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory SessionProbeResponseHttpHeaders.fromMap(Map<String, dynamic> map) {
    return SessionProbeResponseHttpHeaders(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
