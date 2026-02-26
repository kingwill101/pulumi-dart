// ignore_for_file: unused_element, unnecessary_cast

/// Parameters for controlling consumption metering.
class ConsumptionMeteringConfig2 {
  /// Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.
  final bool? enabled;

  ConsumptionMeteringConfig2({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory ConsumptionMeteringConfig2.fromMap(Map<String, dynamic> map) {
    return ConsumptionMeteringConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
