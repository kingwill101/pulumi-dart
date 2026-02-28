// ignore_for_file: unused_element, unnecessary_cast


class GetServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader {
  /// The name of the Cloud Run Service.
  final String name;
  /// The header field value.
  final String value;

  /// Creates a new [GetServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader].
  /// [name] The name of the Cloud Run Service.
  /// [value] The header field value.
  GetServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerStartupProbeHttpGetHttpHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

