// ignore_for_file: unused_element, unnecessary_cast

class RegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity {
  /// This field indicates whether zonal affinity is enabled or not.
  /// Default value is `ZONAL_AFFINITY_DISABLED`.
  /// Possible values are: `ZONAL_AFFINITY_DISABLED`, `ZONAL_AFFINITY_SPILL_CROSS_ZONE`, `ZONAL_AFFINITY_STAY_WITHIN_ZONE`.
  final String? spillover;

  /// The value of the field must be in [0, 1]. When the ratio of the count of healthy backend endpoints in a zone
  /// to the count of backend endpoints in that same zone is equal to or above this threshold, the load balancer
  /// distributes new connections to all healthy endpoints in the local zone only. When the ratio of the count
  /// of healthy backend endpoints in a zone to the count of backend endpoints in that same zone is below this
  /// threshold, the load balancer distributes all new connections to all healthy endpoints across all zones.
  final double? spilloverRatio;

  RegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity({
    this.spillover,
    this.spilloverRatio,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final spilloverValue = spillover;
    if (spilloverValue != null) {
      map['spillover'] = spilloverValue;
    }
    final spilloverRatioValue = spilloverRatio;
    if (spilloverRatioValue != null) {
      map['spilloverRatio'] = spilloverRatioValue;
    }
    return map;
  }

  factory RegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity.fromMap(
      Map<String, dynamic> map) {
    return RegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity(
      spillover: map['spillover'] == null ? null : map['spillover'] as String,
      spilloverRatio: map['spilloverRatio'] == null
          ? null
          : map['spilloverRatio'] as double,
    );
  }
}
