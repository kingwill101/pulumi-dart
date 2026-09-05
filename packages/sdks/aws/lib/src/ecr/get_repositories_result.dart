// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRepositories.
class GetRepositoriesResult {
  /// AWS Region.
  final String? id;
  /// A list if AWS Elastic Container Registries for the region.
  final List<String>? names;
  final String? region;

  /// Creates a new [GetRepositoriesResult].
  /// [id] AWS Region.
  /// [names] A list if AWS Elastic Container Registries for the region.
  /// [region] Optional.
  const GetRepositoriesResult({
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

  factory GetRepositoriesResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoriesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
