// ignore_for_file: unused_element, unnecessary_cast

class WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeaders {
  /// Required. The header field name
  final int port;

  /// Optional. The header field value
  final String? value;

  WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeaders({
    required this.port,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeaders.fromMap(
      Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeaders(
      port: map['port'] as int,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
