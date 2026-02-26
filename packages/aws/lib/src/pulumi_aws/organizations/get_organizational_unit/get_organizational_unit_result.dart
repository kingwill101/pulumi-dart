// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getOrganizationalUnit.
class GetOrganizationalUnitResult {
  /// ARN of the organizational unit
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String parentId;

  GetOrganizationalUnitResult({
    required this.arn,
    required this.id,
    required this.name,
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    map['parentId'] = parentId;
    return map;
  }

  factory GetOrganizationalUnitResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      parentId: map['parentId'] as String,
    );
  }
}
