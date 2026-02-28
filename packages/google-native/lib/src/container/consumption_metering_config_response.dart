// ignore_for_file: unused_element, unnecessary_cast


/// Parameters for controlling consumption metering.
class ConsumptionMeteringConfigResponse {
  /// Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.
  final bool enabled;

  /// Creates a new [ConsumptionMeteringConfigResponse].
  /// [enabled] Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.
  ConsumptionMeteringConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ConsumptionMeteringConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConsumptionMeteringConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}

