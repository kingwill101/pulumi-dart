// ignore_for_file: unused_element, unnecessary_cast

class GetConfigurationSetVdmOptionGuardianOption {
  /// Specifies the status of your VDM optimized shared delivery.
  final String optimizedSharedDelivery;

  /// Creates a new [GetConfigurationSetVdmOptionGuardianOption].
  /// [optimizedSharedDelivery] Specifies the status of your VDM optimized shared delivery.
  GetConfigurationSetVdmOptionGuardianOption({
    required this.optimizedSharedDelivery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optimizedSharedDelivery': optimizedSharedDelivery,
    };
  }

  factory GetConfigurationSetVdmOptionGuardianOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConfigurationSetVdmOptionGuardianOption(
      optimizedSharedDelivery: map['optimizedSharedDelivery'] as String,
    );
  }
}
