// ignore_for_file: unused_element, unnecessary_cast

class GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader {
  /// Required. The header field name
  final int port;

  /// Optional. The header field value
  final String value;

  GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader({
    required this.port,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    map['value'] = value;
    return map;
  }

  factory GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader.fromMap(
      Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader(
      port: map['port'] as int,
      value: map['value'] as String,
    );
  }
}
