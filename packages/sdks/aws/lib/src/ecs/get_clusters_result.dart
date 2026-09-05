// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClusters.
class GetClustersResult {
  /// List of ECS cluster ARNs associated with the account.
  final List<String>? clusterArns;
  final String? region;

  /// Creates a new [GetClustersResult].
  /// [clusterArns] List of ECS cluster ARNs associated with the account.
  /// [region] Optional.
  const GetClustersResult({
    this.clusterArns,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArns': ?clusterArns,
      'region': ?region,
    };
  }

  factory GetClustersResult.fromMap(Map<String, dynamic> map) {
    return GetClustersResult(
      clusterArns: (() { final guardedValue = map['clusterArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
