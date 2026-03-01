// ignore_for_file: unused_element, unnecessary_cast

/// This is not supported or used by Cloud Run.
class OwnerReferenceResponse {
  /// This is not supported or used by Cloud Run.
  final String apiVersion;

  /// This is not supported or used by Cloud Run.
  final bool blockOwnerDeletion;

  /// This is not supported or used by Cloud Run.
  final bool controller;

  /// This is not supported or used by Cloud Run.
  final String kind;

  /// This is not supported or used by Cloud Run.
  final String name;

  /// This is not supported or used by Cloud Run.
  final String uid;

  /// Creates a new [OwnerReferenceResponse].
  /// [apiVersion] This is not supported or used by Cloud Run.
  /// [blockOwnerDeletion] This is not supported or used by Cloud Run.
  /// [controller] This is not supported or used by Cloud Run.
  /// [kind] This is not supported or used by Cloud Run.
  /// [name] This is not supported or used by Cloud Run.
  /// [uid] This is not supported or used by Cloud Run.
  OwnerReferenceResponse({
    required this.apiVersion,
    required this.blockOwnerDeletion,
    required this.controller,
    required this.kind,
    required this.name,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': apiVersion,
      'blockOwnerDeletion': blockOwnerDeletion,
      'controller': controller,
      'kind': kind,
      'name': name,
      'uid': uid,
    };
  }

  factory OwnerReferenceResponse.fromMap(Map<String, dynamic> map) {
    return OwnerReferenceResponse(
      apiVersion: map['apiVersion'] as String,
      blockOwnerDeletion: map['blockOwnerDeletion'] as bool,
      controller: map['controller'] as bool,
      kind: map['kind'] as String,
      name: map['name'] as String,
      uid: map['uid'] as String,
    );
  }
}
