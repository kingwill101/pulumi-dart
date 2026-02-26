// ignore_for_file: unused_element, unnecessary_cast

class GetConfigurationSetVdmOptionGuardianOption {
  /// Specifies the status of your VDM optimized shared delivery.
  final String optimizedSharedDelivery;

  GetConfigurationSetVdmOptionGuardianOption({
    required this.optimizedSharedDelivery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['optimizedSharedDelivery'] = optimizedSharedDelivery;
    return map;
  }

  factory GetConfigurationSetVdmOptionGuardianOption.fromMap(
      Map<String, dynamic> map) {
    return GetConfigurationSetVdmOptionGuardianOption(
      optimizedSharedDelivery: map['optimizedSharedDelivery'] as String,
    );
  }
}
