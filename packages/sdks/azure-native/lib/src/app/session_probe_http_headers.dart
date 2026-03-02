// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTPHeader describes a custom header to be used in HTTP probes
class SessionProbeHttpHeaders {
  /// The header field name
  final pulumi.Input<String> name;
  /// The header field value
  final pulumi.Input<String> value;

  /// Creates a new [SessionProbeHttpHeaders].
  /// [name] The header field name
  /// [value] The header field value
  SessionProbeHttpHeaders({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory SessionProbeHttpHeaders.fromMap(Map<String, dynamic> map) {
    return SessionProbeHttpHeaders(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

