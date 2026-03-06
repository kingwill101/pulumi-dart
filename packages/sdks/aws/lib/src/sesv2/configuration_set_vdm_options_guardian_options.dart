// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetVdmOptionsGuardianOptions {
  /// Specifies the status of your VDM optimized shared delivery. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? optimizedSharedDelivery;

  /// Creates a new [ConfigurationSetVdmOptionsGuardianOptions].
  /// [optimizedSharedDelivery] Specifies the status of your VDM optimized shared delivery. Valid values: `ENABLED`, `DISABLED`.
  const ConfigurationSetVdmOptionsGuardianOptions({
    this.optimizedSharedDelivery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optimizedSharedDelivery': ?optimizedSharedDelivery,
    };
  }

  factory ConfigurationSetVdmOptionsGuardianOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetVdmOptionsGuardianOptions(
      optimizedSharedDelivery: (() { final guardedValue = map['optimizedSharedDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

