// ignore_for_file: unused_element, unnecessary_cast


class WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeaders {
  /// Required. The header field name
  final int port;
  /// Optional. The header field value
  final String? value;

  /// Creates a new [WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeaders].
  /// [port] Required. The header field name
  /// [value] Optional. The header field value
  WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeaders({
    required this.port,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'value': ?value,
    };
  }

  factory WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeaders.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeaders(
      port: map['port'] as int,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

