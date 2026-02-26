// ignore_for_file: unused_element, unnecessary_cast

class AccountVdmAttributesGuardianAttributes {
  /// Specifies the status of your VDM optimized shared delivery. Valid values: `ENABLED`, `DISABLED`.
  final String? optimizedSharedDelivery;

  AccountVdmAttributesGuardianAttributes({
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

  factory AccountVdmAttributesGuardianAttributes.fromMap(
      Map<String, dynamic> map) {
    return AccountVdmAttributesGuardianAttributes(
      optimizedSharedDelivery: map['optimizedSharedDelivery'] == null
          ? null
          : map['optimizedSharedDelivery'] as String,
    );
  }
}
