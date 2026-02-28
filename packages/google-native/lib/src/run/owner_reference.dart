// ignore_for_file: unused_element, unnecessary_cast


/// This is not supported or used by Cloud Run.
class OwnerReference {
  /// This is not supported or used by Cloud Run.
  final String? apiVersion;
  /// This is not supported or used by Cloud Run.
  final bool? blockOwnerDeletion;
  /// This is not supported or used by Cloud Run.
  final bool? controller;
  /// This is not supported or used by Cloud Run.
  final String? kind;
  /// This is not supported or used by Cloud Run.
  final String? name;
  /// This is not supported or used by Cloud Run.
  final String? uid;

  /// Creates a new [OwnerReference].
  /// [apiVersion] This is not supported or used by Cloud Run.
  /// [blockOwnerDeletion] This is not supported or used by Cloud Run.
  /// [controller] This is not supported or used by Cloud Run.
  /// [kind] This is not supported or used by Cloud Run.
  /// [name] This is not supported or used by Cloud Run.
  /// [uid] This is not supported or used by Cloud Run.
  OwnerReference({
    this.apiVersion,
    this.blockOwnerDeletion,
    this.controller,
    this.kind,
    this.name,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'blockOwnerDeletion': ?blockOwnerDeletion,
      'controller': ?controller,
      'kind': ?kind,
      'name': ?name,
      'uid': ?uid,
    };
  }

  factory OwnerReference.fromMap(Map<String, dynamic> map) {
    return OwnerReference(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      blockOwnerDeletion: map['blockOwnerDeletion'] == null ? null : map['blockOwnerDeletion'] as bool,
      controller: map['controller'] == null ? null : map['controller'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}

