// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTPHeader describes a custom header to be used in HTTP probes
class ContainerAppProbeHttpHeaders {
  /// The header field name
  final pulumi.Input<String> name;
  /// The header field value
  final pulumi.Input<String> value;

  /// Creates a new [ContainerAppProbeHttpHeaders].
  /// [name] The header field name
  /// [value] The header field value
  const ContainerAppProbeHttpHeaders({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ContainerAppProbeHttpHeaders.fromMap(Map<String, dynamic> map) {
    return ContainerAppProbeHttpHeaders(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

