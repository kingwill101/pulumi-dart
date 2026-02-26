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

  OwnerReferenceResponse({
    required this.apiVersion,
    required this.blockOwnerDeletion,
    required this.controller,
    required this.kind,
    required this.name,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiVersion'] = apiVersion;
    map['blockOwnerDeletion'] = blockOwnerDeletion;
    map['controller'] = controller;
    map['kind'] = kind;
    map['name'] = name;
    map['uid'] = uid;
    return map;
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
