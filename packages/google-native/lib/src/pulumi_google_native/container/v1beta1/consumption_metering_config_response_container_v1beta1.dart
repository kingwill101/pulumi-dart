// ignore_for_file: unused_element, unnecessary_cast

/// Parameters for controlling consumption metering.
class ConsumptionMeteringConfigResponseContainerV1beta1 {
  /// Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.
  final bool enabled;

  ConsumptionMeteringConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ConsumptionMeteringConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ConsumptionMeteringConfigResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}
