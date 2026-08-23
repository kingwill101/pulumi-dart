// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClusters.
class GetClustersResult {
  /// List of ECS cluster ARNs associated with the account.
  final List<String> clusterArns;
  final String region;

  /// Creates a new [GetClustersResult].
  /// [clusterArns] List of ECS cluster ARNs associated with the account.
  /// [region] Required.
  const GetClustersResult({
    required this.clusterArns,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArns': clusterArns,
      'region': region,
    };
  }

  factory GetClustersResult.fromMap(Map<String, dynamic> map) {
    return GetClustersResult(
      clusterArns: (map['clusterArns'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
