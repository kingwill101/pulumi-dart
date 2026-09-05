// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEntityPath.
class GetEntityPathResult {
  final String? entityId;
  /// Entity path.
  final String? entityPath;

  /// Creates a new [GetEntityPathResult].
  /// [entityId] Optional.
  /// [entityPath] Entity path.
  const GetEntityPathResult({
    this.entityId,
    this.entityPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': ?entityId,
      'entityPath': ?entityPath,
    };
  }

  factory GetEntityPathResult.fromMap(Map<String, dynamic> map) {
    return GetEntityPathResult(
      entityId: (() { final guardedValue = map['entityId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entityPath: (() { final guardedValue = map['entityPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
