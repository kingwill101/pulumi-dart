// ignore_for_file: unused_element, unnecessary_cast

/// Parameters for controlling consumption metering.
class ConsumptionMeteringConfigContainerV1beta1 {
  /// Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.
  final bool? enabled;

  /// Creates a new [ConsumptionMeteringConfigContainerV1beta1].
  /// [enabled] Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.
  ConsumptionMeteringConfigContainerV1beta1({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory ConsumptionMeteringConfigContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConsumptionMeteringConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
