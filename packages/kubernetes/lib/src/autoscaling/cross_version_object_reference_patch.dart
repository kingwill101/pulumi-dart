// ignore_for_file: unused_element, unnecessary_cast


/// CrossVersionObjectReference contains enough information to let you identify the referred resource.
class CrossVersionObjectReferencePatch {
  /// apiVersion is the API version of the referent
  final String? apiVersion;
  /// kind is the kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// name is the name of the referent; More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final String? name;

  /// Creates a new [CrossVersionObjectReferencePatch].
  /// [apiVersion] apiVersion is the API version of the referent
  /// [kind] kind is the kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [name] name is the name of the referent; More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  CrossVersionObjectReferencePatch({
    this.apiVersion,
    this.kind,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'name': ?name,
    };
  }

  factory CrossVersionObjectReferencePatch.fromMap(Map<String, dynamic> map) {
    return CrossVersionObjectReferencePatch(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

