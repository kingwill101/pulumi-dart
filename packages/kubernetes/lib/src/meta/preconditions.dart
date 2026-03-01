// ignore_for_file: unused_element, unnecessary_cast


/// Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
class Preconditions {
  /// Specifies the target ResourceVersion
  final String? resourceVersion;
  /// Specifies the target UID.
  final String? uid;

  /// Creates a new [Preconditions].
  /// [resourceVersion] Specifies the target ResourceVersion
  /// [uid] Specifies the target UID.
  Preconditions({
    this.resourceVersion,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceVersion': ?resourceVersion,
      'uid': ?uid,
    };
  }

  factory Preconditions.fromMap(Map<String, dynamic> map) {
    return Preconditions(
      resourceVersion: map['resourceVersion'] == null ? null : map['resourceVersion'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}

