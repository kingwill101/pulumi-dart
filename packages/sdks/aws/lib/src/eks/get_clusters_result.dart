// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClusters.
class GetClustersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Set of EKS clusters names
  final List<String> names;
  final String region;

  /// Creates a new [GetClustersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] Set of EKS clusters names
  /// [region] Required.
  const GetClustersResult({
    required this.id,
    required this.names,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'names': names,
      'region': region,
    };
  }

  factory GetClustersResult.fromMap(Map<String, dynamic> map) {
    return GetClustersResult(
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

