// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateTemplateContainerStartupProbeHttpGetHttpHeader {
  /// The header field name.
  final String name;

  /// The header field value.
  final String? value;

  JobTemplateTemplateContainerStartupProbeHttpGetHttpHeader({
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

  factory JobTemplateTemplateContainerStartupProbeHttpGetHttpHeader.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateTemplateContainerStartupProbeHttpGetHttpHeader(
      name: map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
