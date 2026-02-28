// ignore_for_file: unused_element, unnecessary_cast

class GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader {
  /// Required. The header field name
  final int port;

  /// Optional. The header field value
  final String value;

  /// Creates a new [GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader].
  /// [port] Required. The header field name
  /// [value] Optional. The header field value
  GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader({
    required this.port,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    map['value'] = value;
    return map;
  }

  factory GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader.fromMap(
      Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader(
      port: map['port'] as int,
      value: map['value'] as String,
    );
  }
}
