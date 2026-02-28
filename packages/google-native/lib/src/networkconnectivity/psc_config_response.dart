// ignore_for_file: unused_element, unnecessary_cast

/// Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
class PscConfigResponse {
  /// Optional. Max number of PSC connections for this policy.
  final String limit;

  /// The resource paths of subnetworks to use for IP address management. Example: projects/{projectNumOrId}/regions/{region}/subnetworks/{resourceId}.
  final List<String> subnetworks;

  /// Creates a new [PscConfigResponse].
  /// [limit] Optional. Max number of PSC connections for this policy.
  /// [subnetworks] The resource paths of subnetworks to use for IP address management. Example: projects/{projectNumOrId}/regions/{region}/subnetworks/{resourceId}.
  PscConfigResponse({
    required this.limit,
    required this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['limit'] = limit;
    map['subnetworks'] = subnetworks;
    return map;
  }

  factory PscConfigResponse.fromMap(Map<String, dynamic> map) {
    return PscConfigResponse(
      limit: map['limit'] as String,
      subnetworks: (map['subnetworks'] as List).cast<String>(),
    );
  }
}
