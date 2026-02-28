// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClusters.
class GetClustersResult {
  /// List of ECS cluster ARNs associated with the account.
  final List<String> clusterArns;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetClustersResult].
  /// [clusterArns] List of ECS cluster ARNs associated with the account.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetClustersResult({
    required this.clusterArns,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArns': clusterArns,
      'id': id,
      'region': region,
    };
  }

  factory GetClustersResult.fromMap(Map<String, dynamic> map) {
    return GetClustersResult(
      clusterArns: (map['clusterArns'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

