// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader {
  /// The name of the Cloud Run Service.
  final String name;

  /// The header field value.
  final String value;

  GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
