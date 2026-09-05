// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationSetVdmOptionGuardianOption {
  /// Status of your VDM optimized shared delivery.
  final pulumi.Input<String> optimizedSharedDelivery;

  /// Creates a new [GetConfigurationSetVdmOptionGuardianOption].
  /// [optimizedSharedDelivery] Status of your VDM optimized shared delivery.
  const GetConfigurationSetVdmOptionGuardianOption({
    required this.optimizedSharedDelivery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optimizedSharedDelivery': optimizedSharedDelivery,
    };
  }

  factory GetConfigurationSetVdmOptionGuardianOption.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetVdmOptionGuardianOption(
      optimizedSharedDelivery: pulumi.Input.fromValue(map['optimizedSharedDelivery'] as String),
    );
  }
}
