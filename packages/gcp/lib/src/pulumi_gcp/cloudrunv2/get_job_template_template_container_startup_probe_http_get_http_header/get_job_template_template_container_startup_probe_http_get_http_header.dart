// ignore_for_file: unused_element, unnecessary_cast

class GetJobTemplateTemplateContainerStartupProbeHttpGetHttpHeader {
  /// The name of the Cloud Run v2 Job.
  final String name;

  /// The header field value.
  final String value;

  GetJobTemplateTemplateContainerStartupProbeHttpGetHttpHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetJobTemplateTemplateContainerStartupProbeHttpGetHttpHeader.fromMap(
      Map<String, dynamic> map) {
    return GetJobTemplateTemplateContainerStartupProbeHttpGetHttpHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
