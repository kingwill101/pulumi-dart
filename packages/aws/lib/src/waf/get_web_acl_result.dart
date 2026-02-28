// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWebAcl.
class GetWebAclResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// Creates a new [GetWebAclResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  GetWebAclResult({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  factory GetWebAclResult.fromMap(Map<String, dynamic> map) {
    return GetWebAclResult(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
