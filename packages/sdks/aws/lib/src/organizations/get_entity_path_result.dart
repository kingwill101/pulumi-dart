// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEntityPath.
class GetEntityPathResult {
  final String entityId;
  /// Entity path.
  final String entityPath;
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Creates a new [GetEntityPathResult].
  /// [entityId] Required.
  /// [entityPath] Entity path.
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetEntityPathResult({
    required this.entityId,
    required this.entityPath,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'entityPath': entityPath,
      'id': id,
    };
  }

  factory GetEntityPathResult.fromMap(Map<String, dynamic> map) {
    return GetEntityPathResult(
      entityId: map['entityId'] as String,
      entityPath: map['entityPath'] as String,
      id: map['id'] as String,
    );
  }
}

