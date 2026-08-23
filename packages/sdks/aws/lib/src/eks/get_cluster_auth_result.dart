// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClusterAuth.
class GetClusterAuthResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;
  /// Token to use to authenticate with the cluster.
  final String token;

  /// Creates a new [GetClusterAuthResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [token] Token to use to authenticate with the cluster.
  const GetClusterAuthResult({
    required this.id,
    required this.name,
    required this.region,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'region': region,
      'token': token,
    };
  }

  factory GetClusterAuthResult.fromMap(Map<String, dynamic> map) {
    return GetClusterAuthResult(
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      token: map['token'] as String,
    );
  }
}
