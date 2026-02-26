// ignore_for_file: unused_element, unnecessary_cast

class CapabilityConfigurationArgoCdNetworkAccess {
  /// VPC Endpoint IDs.
  final List<String>? vpceIds;

  CapabilityConfigurationArgoCdNetworkAccess({
    this.vpceIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final vpceIdsValue = vpceIds;
    if (vpceIdsValue != null) {
      map['vpceIds'] = vpceIdsValue;
    }
    return map;
  }

  factory CapabilityConfigurationArgoCdNetworkAccess.fromMap(
      Map<String, dynamic> map) {
    return CapabilityConfigurationArgoCdNetworkAccess(
      vpceIds: map['vpceIds'] == null
          ? null
          : (map['vpceIds'] as List).cast<String>(),
    );
  }
}
