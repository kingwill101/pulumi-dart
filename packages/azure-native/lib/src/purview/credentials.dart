// ignore_for_file: unused_element, unnecessary_cast


/// Credentials to access the event streaming service attached to the purview account.
class Credentials {
  /// Identity identifier for UserAssign type.
  final String? identityId;
  /// Identity Type.
  final String? type;

  /// Creates a new [Credentials].
  /// [identityId] Identity identifier for UserAssign type.
  /// [type] Identity Type.
  Credentials({
    this.identityId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityId': ?identityId,
      'type': ?type,
    };
  }

  factory Credentials.fromMap(Map<String, dynamic> map) {
    return Credentials(
      identityId: map['identityId'] == null ? null : map['identityId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

