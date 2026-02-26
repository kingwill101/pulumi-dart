// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEntityPath.
class GetEntityPathResult {
  final String entityId;

  /// Entity path.
  final String entityPath;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  GetEntityPathResult({
    required this.entityId,
    required this.entityPath,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityId'] = entityId;
    map['entityPath'] = entityPath;
    map['id'] = id;
    return map;
  }

  factory GetEntityPathResult.fromMap(Map<String, dynamic> map) {
    return GetEntityPathResult(
      entityId: map['entityId'] as String,
      entityPath: map['entityPath'] as String,
      id: map['id'] as String,
    );
  }
}
