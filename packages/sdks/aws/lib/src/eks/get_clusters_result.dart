// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClusters.
class GetClustersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of EKS clusters names
  final List<String>? names;
  final String? region;

  /// Creates a new [GetClustersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] Set of EKS clusters names
  /// [region] Optional.
  const GetClustersResult({
    this.id,
    this.names,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'names': ?names,
      'region': ?region,
    };
  }

  factory GetClustersResult.fromMap(Map<String, dynamic> map) {
    return GetClustersResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
