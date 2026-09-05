// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClusterAuth.
class GetClusterAuthResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// Token to use to authenticate with the cluster.
  final String? token;

  /// Creates a new [GetClusterAuthResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [token] Token to use to authenticate with the cluster.
  const GetClusterAuthResult({
    this.id,
    this.name,
    this.region,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'token': ?token,
    };
  }

  factory GetClusterAuthResult.fromMap(Map<String, dynamic> map) {
    return GetClusterAuthResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
