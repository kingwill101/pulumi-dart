// ignore_for_file: unused_element, unnecessary_cast


/// LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
class LocalObjectReference {
  /// Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final String? name;

  /// Creates a new [LocalObjectReference].
  /// [name] Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  LocalObjectReference({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory LocalObjectReference.fromMap(Map<String, dynamic> map) {
    return LocalObjectReference(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

