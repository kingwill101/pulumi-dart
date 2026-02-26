// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAccessPolicy.
class GetAccessPolicyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Resource name of the AccessPolicy.
  final String name;
  final String parent;
  final List<String>? scopes;

  /// Human readable title. Does not affect behavior.
  final String title;

  GetAccessPolicyResult({
    required this.id,
    required this.name,
    required this.parent,
    this.scopes,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['parent'] = parent;
    final scopesValue = scopes;
    if (scopesValue != null) {
      map['scopes'] = scopesValue;
    }
    map['title'] = title;
    return map;
  }

  factory GetAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyResult(
      id: map['id'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
      scopes:
          map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
      title: map['title'] as String,
    );
  }
}
