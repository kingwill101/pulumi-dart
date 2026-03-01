// ignore_for_file: unused_element, unnecessary_cast


/// Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
class PreconditionsPatch {
  /// Specifies the target ResourceVersion
  final String? resourceVersion;
  /// Specifies the target UID.
  final String? uid;

  /// Creates a new [PreconditionsPatch].
  /// [resourceVersion] Specifies the target ResourceVersion
  /// [uid] Specifies the target UID.
  PreconditionsPatch({
    this.resourceVersion,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceVersion': ?resourceVersion,
      'uid': ?uid,
    };
  }

  factory PreconditionsPatch.fromMap(Map<String, dynamic> map) {
    return PreconditionsPatch(
      resourceVersion: map['resourceVersion'] == null ? null : map['resourceVersion'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}

