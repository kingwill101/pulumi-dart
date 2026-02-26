// ignore_for_file: unused_element, unnecessary_cast

/// Not supported by Cloud Run. LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
class LocalObjectReferenceResponse {
  /// Name of the referent.
  final String name;

  LocalObjectReferenceResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory LocalObjectReferenceResponse.fromMap(Map<String, dynamic> map) {
    return LocalObjectReferenceResponse(
      name: map['name'] as String,
    );
  }
}
