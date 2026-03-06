// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthorizers.
class GetAuthorizersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of Authorizer identifiers.
  final List<String> ids;
  final String region;
  final String restApiId;

  /// Creates a new [GetAuthorizersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of Authorizer identifiers.
  /// [region] Required.
  /// [restApiId] Required.
  const GetAuthorizersResult({
    required this.id,
    required this.ids,
    required this.region,
    required this.restApiId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'region': region,
      'restApiId': restApiId,
    };
  }

  factory GetAuthorizersResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizersResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      restApiId: map['restApiId'] as String,
    );
  }
}

