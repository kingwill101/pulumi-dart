// ignore_for_file: unused_element, unnecessary_cast

/// Not supported by Cloud Run. LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
class LocalObjectReference {
  /// Name of the referent.
  final String? name;

  /// Creates a new [LocalObjectReference].
  /// [name] Name of the referent.
  LocalObjectReference({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory LocalObjectReference.fromMap(Map<String, dynamic> map) {
    return LocalObjectReference(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
