// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader {
  /// The header field name.
  final String name;

  /// The header field value.
  final String? value;

  ServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader({
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

  factory ServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader(
      name: map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
