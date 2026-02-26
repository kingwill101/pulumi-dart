// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getUsers.
class GetUsersResult {
  /// Set of ARNs of the matched IAM users.
  final List<String> arns;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? nameRegex;

  /// Set of Names of the matched IAM users.
  final List<String> names;
  final String? pathPrefix;

  GetUsersResult({
    required this.arns,
    required this.id,
    this.nameRegex,
    required this.names,
    this.pathPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arns'] = arns;
    map['id'] = id;
    final nameRegexValue = nameRegex;
    if (nameRegexValue != null) {
      map['nameRegex'] = nameRegexValue;
    }
    map['names'] = names;
    final pathPrefixValue = pathPrefix;
    if (pathPrefixValue != null) {
      map['pathPrefix'] = pathPrefixValue;
    }
    return map;
  }

  factory GetUsersResult.fromMap(Map<String, dynamic> map) {
    return GetUsersResult(
      arns: (map['arns'] as List).cast<String>(),
      id: map['id'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      pathPrefix:
          map['pathPrefix'] == null ? null : map['pathPrefix'] as String,
    );
  }
}
