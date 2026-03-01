// ignore_for_file: unused_element, unnecessary_cast

class AccountVdmAttributesGuardianAttributes {
  /// Specifies the status of your VDM optimized shared delivery. Valid values: `ENABLED`, `DISABLED`.
  final String? optimizedSharedDelivery;

  /// Creates a new [AccountVdmAttributesGuardianAttributes].
  /// [optimizedSharedDelivery] Specifies the status of your VDM optimized shared delivery. Valid values: `ENABLED`, `DISABLED`.
  AccountVdmAttributesGuardianAttributes({this.optimizedSharedDelivery});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optimizedSharedDelivery': ?optimizedSharedDelivery,
    };
  }

  factory AccountVdmAttributesGuardianAttributes.fromMap(
    Map<String, dynamic> map,
  ) {
    return AccountVdmAttributesGuardianAttributes(
      optimizedSharedDelivery: map['optimizedSharedDelivery'] == null
          ? null
          : map['optimizedSharedDelivery'] as String,
    );
  }
}
