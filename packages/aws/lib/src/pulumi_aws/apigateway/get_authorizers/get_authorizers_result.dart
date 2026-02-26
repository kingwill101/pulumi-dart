// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAuthorizers.
class GetAuthorizersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of Authorizer identifiers.
  final List<String> ids;
  final String region;
  final String restApiId;

  GetAuthorizersResult({
    required this.id,
    required this.ids,
    required this.region,
    required this.restApiId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    map['restApiId'] = restApiId;
    return map;
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
