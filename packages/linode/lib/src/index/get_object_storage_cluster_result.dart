// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getObjectStorageCluster.
class GetObjectStorageClusterResult {
  /// The base URL for this cluster.
  final String domain;
  final String id;
  /// The region this cluster is located in. See all regions [here](https://api.linode.com/v4/regions).
  final String region;
  /// The base URL for this cluster used when hosting static sites.
  final String staticSiteDomain;
  /// This cluster's status. (`available`, `unavailable`)
  final String status;

  /// Creates a new [GetObjectStorageClusterResult].
  /// [domain] The base URL for this cluster.
  /// [id] Required.
  /// [region] The region this cluster is located in. See all regions [here](https://api.linode.com/v4/regions).
  /// [staticSiteDomain] The base URL for this cluster used when hosting static sites.
  /// [status] This cluster's status. (`available`, `unavailable`)
  GetObjectStorageClusterResult({
    required this.domain,
    required this.id,
    required this.region,
    required this.staticSiteDomain,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'id': id,
      'region': region,
      'staticSiteDomain': staticSiteDomain,
      'status': status,
    };
  }

  factory GetObjectStorageClusterResult.fromMap(Map<String, dynamic> map) {
    return GetObjectStorageClusterResult(
      domain: map['domain'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      staticSiteDomain: map['staticSiteDomain'] as String,
      status: map['status'] as String,
    );
  }
}

