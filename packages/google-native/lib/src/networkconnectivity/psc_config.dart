// ignore_for_file: unused_element, unnecessary_cast

/// Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
class PscConfig {
  /// Optional. Max number of PSC connections for this policy.
  final String? limit;

  /// The resource paths of subnetworks to use for IP address management. Example: projects/{projectNumOrId}/regions/{region}/subnetworks/{resourceId}.
  final List<String>? subnetworks;

  /// Creates a new [PscConfig].
  /// [limit] Optional. Max number of PSC connections for this policy.
  /// [subnetworks] The resource paths of subnetworks to use for IP address management. Example: projects/{projectNumOrId}/regions/{region}/subnetworks/{resourceId}.
  PscConfig({
    this.limit,
    this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final limitValue = limit;
    if (limitValue != null) {
      map['limit'] = limitValue;
    }
    final subnetworksValue = subnetworks;
    if (subnetworksValue != null) {
      map['subnetworks'] = subnetworksValue;
    }
    return map;
  }

  factory PscConfig.fromMap(Map<String, dynamic> map) {
    return PscConfig(
      limit: map['limit'] == null ? null : map['limit'] as String,
      subnetworks: map['subnetworks'] == null
          ? null
          : (map['subnetworks'] as List).cast<String>(),
    );
  }
}
