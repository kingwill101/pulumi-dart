// ignore_for_file: unused_element, unnecessary_cast


class ServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader {
  /// The header field name.
  final String name;
  /// The header field value.
  final String? value;

  /// Creates a new [ServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader].
  /// [name] The header field name.
  /// [value] The header field value.
  ServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
    };
  }

  factory ServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader(
      name: map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

