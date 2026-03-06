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

  /// Creates a new [GetResourceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parentId] Set to the ID of the parent Resource.
  /// [path] Required.
  /// [pathPart] Set to the path relative to the parent Resource.
  /// [region] Required.
  /// [restApiId] Required.
  const GetResourceResult({
    required this.id,
    required this.parentId,
    required this.path,
    required this.pathPart,
    required this.region,
    required this.restApiId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'parentId': parentId,
      'path': path,
      'pathPart': pathPart,
      'region': region,
      'restApiId': restApiId,
    };
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

