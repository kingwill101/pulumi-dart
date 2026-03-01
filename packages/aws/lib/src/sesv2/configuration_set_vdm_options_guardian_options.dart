// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationSetVdmOptionsGuardianOptions {
  /// Specifies the status of your VDM optimized shared delivery. Valid values: `ENABLED`, `DISABLED`.
  final String? optimizedSharedDelivery;

  /// Creates a new [ConfigurationSetVdmOptionsGuardianOptions].
  /// [optimizedSharedDelivery] Specifies the status of your VDM optimized shared delivery. Valid values: `ENABLED`, `DISABLED`.
  ConfigurationSetVdmOptionsGuardianOptions({this.optimizedSharedDelivery});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optimizedSharedDelivery': ?optimizedSharedDelivery,
    };
  }

  factory ConfigurationSetVdmOptionsGuardianOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigurationSetVdmOptionsGuardianOptions(
      optimizedSharedDelivery: map['optimizedSharedDelivery'] == null
          ? null
          : map['optimizedSharedDelivery'] as String,
    );
  }
}
