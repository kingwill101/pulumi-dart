// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEntityPath.
class GetEntityPathResult {
  final String entityId;
  /// Entity path.
  final String entityPath;

  /// Creates a new [GetEntityPathResult].
  /// [entityId] Required.
  /// [entityPath] Entity path.
  const GetEntityPathResult({
    required this.entityId,
    required this.entityPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'entityPath': entityPath,
    };
  }

  factory GetEntityPathResult.fromMap(Map<String, dynamic> map) {
    return GetEntityPathResult(
      entityId: map['entityId'] as String,
      entityPath: map['entityPath'] as String,
    );
  }
}
