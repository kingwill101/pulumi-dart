// ignore_for_file: unused_element, unnecessary_cast

/// Parameters for controlling consumption metering.
class ConsumptionMeteringConfigResponse {
  /// Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.
  final bool enabled;

  ConsumptionMeteringConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ConsumptionMeteringConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConsumptionMeteringConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
