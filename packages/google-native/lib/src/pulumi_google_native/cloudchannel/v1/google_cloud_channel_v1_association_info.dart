// ignore_for_file: unused_element, unnecessary_cast

/// Association links that an entitlement has to other entitlements.
class GoogleCloudChannelV1AssociationInfo {
  /// The name of the base entitlement, for which this entitlement is an add-on.
  final String? baseEntitlement;

  GoogleCloudChannelV1AssociationInfo({
    this.baseEntitlement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseEntitlementValue = baseEntitlement;
    if (baseEntitlementValue != null) {
      map['baseEntitlement'] = baseEntitlementValue;
    }
    return map;
  }

  factory GoogleCloudChannelV1AssociationInfo.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudChannelV1AssociationInfo(
      baseEntitlement: map['baseEntitlement'] == null
          ? null
          : map['baseEntitlement'] as String,
    );
  }
}
