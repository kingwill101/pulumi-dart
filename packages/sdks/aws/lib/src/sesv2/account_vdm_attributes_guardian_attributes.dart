// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountVdmAttributesGuardianAttributes {
  /// Status of your VDM optimized shared delivery. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String?>? optimizedSharedDelivery;

  /// Creates a new [AccountVdmAttributesGuardianAttributes].
  /// [optimizedSharedDelivery] Status of your VDM optimized shared delivery. Valid values: `ENABLED`, `DISABLED`.
  const AccountVdmAttributesGuardianAttributes({
    this.optimizedSharedDelivery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optimizedSharedDelivery': ?optimizedSharedDelivery,
    };
  }

  factory AccountVdmAttributesGuardianAttributes.fromMap(Map<String, dynamic> map) {
    return AccountVdmAttributesGuardianAttributes(
      optimizedSharedDelivery: (() { final guardedValue = map['optimizedSharedDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
