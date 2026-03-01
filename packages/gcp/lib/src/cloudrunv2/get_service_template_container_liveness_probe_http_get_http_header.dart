// ignore_for_file: unused_element, unnecessary_cast


class GetServiceTemplateContainerLivenessProbeHttpGetHttpHeader {
  /// The name of the Cloud Run v2 Service.
  final String name;
  /// The header field value
  final String value;

  /// Creates a new [GetServiceTemplateContainerLivenessProbeHttpGetHttpHeader].
  /// [name] The name of the Cloud Run v2 Service.
  /// [value] The header field value
  GetServiceTemplateContainerLivenessProbeHttpGetHttpHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetServiceTemplateContainerLivenessProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainerLivenessProbeHttpGetHttpHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

