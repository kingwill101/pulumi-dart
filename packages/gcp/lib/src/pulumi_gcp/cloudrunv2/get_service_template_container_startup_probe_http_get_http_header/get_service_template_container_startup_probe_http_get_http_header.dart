// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateContainerStartupProbeHttpGetHttpHeader {
  /// The name of the Cloud Run v2 Service.
  final String name;

  /// The header field value
  final String value;

  GetServiceTemplateContainerStartupProbeHttpGetHttpHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetServiceTemplateContainerStartupProbeHttpGetHttpHeader.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateContainerStartupProbeHttpGetHttpHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
