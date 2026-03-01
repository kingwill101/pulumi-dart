// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRoles.
class GetRolesResult {
  /// Set of ARNs of the matched IAM roles.
  final List<String> arns;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? nameRegex;

  /// Set of Names of the matched IAM roles.
  final List<String> names;
  final String? pathPrefix;

  /// Creates a new [GetRolesResult].
  /// [arns] Set of ARNs of the matched IAM roles.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nameRegex] Optional.
  /// [names] Set of Names of the matched IAM roles.
  /// [pathPrefix] Optional.
  GetRolesResult({
    required this.arns,
    required this.id,
    this.nameRegex,
    required this.names,
    this.pathPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'id': id,
      'nameRegex': ?nameRegex,
      'names': names,
      'pathPrefix': ?pathPrefix,
    };
  }

  factory GetRolesResult.fromMap(Map<String, dynamic> map) {
    return GetRolesResult(
      arns: (map['arns'] as List).cast<String>(),
      id: map['id'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      pathPrefix: map['pathPrefix'] == null
          ? null
          : map['pathPrefix'] as String,
    );
  }
}
