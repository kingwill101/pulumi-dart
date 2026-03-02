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
  SessionProbeResponseHttpHeaders({
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
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

