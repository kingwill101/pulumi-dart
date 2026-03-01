// ignore_for_file: unused_element, unnecessary_cast


/// HTTPHeader describes a custom header to be used in HTTP probes
class ContainerAppProbeResponseHttpHeaders {
  /// The header field name
  final String name;
  /// The header field value
  final String value;

  /// Creates a new [ContainerAppProbeResponseHttpHeaders].
  /// [name] The header field name
  /// [value] The header field value
  ContainerAppProbeResponseHttpHeaders({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ContainerAppProbeResponseHttpHeaders.fromMap(Map<String, dynamic> map) {
    return ContainerAppProbeResponseHttpHeaders(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

