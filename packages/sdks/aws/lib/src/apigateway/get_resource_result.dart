// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResource.
class GetResourceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set to the ID of the parent Resource.
  final String? parentId;
  final String? path;
  /// Set to the path relative to the parent Resource.
  final String? pathPart;
  final String? region;
  final String? restApiId;

  /// Creates a new [GetResourceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parentId] Set to the ID of the parent Resource.
  /// [path] Optional.
  /// [pathPart] Set to the path relative to the parent Resource.
  /// [region] Optional.
  /// [restApiId] Optional.
  const GetResourceResult({
    this.id,
    this.parentId,
    this.path,
    this.pathPart,
    this.region,
    this.restApiId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'parentId': ?parentId,
      'path': ?path,
      'pathPart': ?pathPart,
      'region': ?region,
      'restApiId': ?restApiId,
    };
  }

  factory GetResourceResult.fromMap(Map<String, dynamic> map) {
    return GetResourceResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pathPart: (() { final guardedValue = map['pathPart']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restApiId: (() { final guardedValue = map['restApiId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
