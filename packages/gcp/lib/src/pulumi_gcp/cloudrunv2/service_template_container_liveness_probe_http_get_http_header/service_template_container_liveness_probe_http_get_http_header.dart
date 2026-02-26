// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateContainerLivenessProbeHttpGetHttpHeader {
  /// The header field name
  final String name;

  /// The header field value
  final String? value;

  ServiceTemplateContainerLivenessProbeHttpGetHttpHeader({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory ServiceTemplateContainerLivenessProbeHttpGetHttpHeader.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateContainerLivenessProbeHttpGetHttpHeader(
      name: map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
