// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getResource.
class GetResourceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set to the ID of the parent Resource.
  final String parentId;
  final String path;

  /// Set to the path relative to the parent Resource.
  final String pathPart;
  final String region;
  final String restApiId;

  GetResourceResult({
    required this.id,
    required this.parentId,
    required this.path,
    required this.pathPart,
    required this.region,
    required this.restApiId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['parentId'] = parentId;
    map['path'] = path;
    map['pathPart'] = pathPart;
    map['region'] = region;
    map['restApiId'] = restApiId;
    return map;
  }

  factory GetResourceResult.fromMap(Map<String, dynamic> map) {
    return GetResourceResult(
      id: map['id'] as String,
      parentId: map['parentId'] as String,
      path: map['path'] as String,
      pathPart: map['pathPart'] as String,
      region: map['region'] as String,
      restApiId: map['restApiId'] as String,
    );
  }
}
