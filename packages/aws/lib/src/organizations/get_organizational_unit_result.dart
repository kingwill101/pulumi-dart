// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrganizationalUnit.
class GetOrganizationalUnitResult {
  /// ARN of the organizational unit
  final String arn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String parentId;

  /// Creates a new [GetOrganizationalUnitResult].
  /// [arn] ARN of the organizational unit
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [parentId] Required.
  GetOrganizationalUnitResult({
    required this.arn,
    required this.id,
    required this.name,
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'name': name,
      'parentId': parentId,
    };
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

