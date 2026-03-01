// ignore_for_file: unused_element, unnecessary_cast


/// BoundObjectReference is a reference to an object that a token is bound to.
class BoundObjectReference {
  /// API version of the referent.
  final String? apiVersion;
  /// Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
  final String? kind;
  /// Name of the referent.
  final String? name;
  /// UID of the referent.
  final String? uid;

  /// Creates a new [BoundObjectReference].
  /// [apiVersion] API version of the referent.
  /// [kind] Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
  /// [name] Name of the referent.
  /// [uid] UID of the referent.
  BoundObjectReference({
    this.apiVersion,
    this.kind,
    this.name,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'name': ?name,
      'uid': ?uid,
    };
  }

  factory BoundObjectReference.fromMap(Map<String, dynamic> map) {
    return BoundObjectReference(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}

