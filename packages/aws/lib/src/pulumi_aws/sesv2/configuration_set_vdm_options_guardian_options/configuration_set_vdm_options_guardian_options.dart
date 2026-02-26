// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationSetVdmOptionsGuardianOptions {
  /// Specifies the status of your VDM optimized shared delivery. Valid values: `ENABLED`, `DISABLED`.
  final String? optimizedSharedDelivery;

  ConfigurationSetVdmOptionsGuardianOptions({
    this.optimizedSharedDelivery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optimizedSharedDeliveryValue = optimizedSharedDelivery;
    if (optimizedSharedDeliveryValue != null) {
      map['optimizedSharedDelivery'] = optimizedSharedDeliveryValue;
    }
    return map;
  }

  factory ConfigurationSetVdmOptionsGuardianOptions.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationSetVdmOptionsGuardianOptions(
      optimizedSharedDelivery: map['optimizedSharedDelivery'] == null
          ? null
          : map['optimizedSharedDelivery'] as String,
    );
  }
}
