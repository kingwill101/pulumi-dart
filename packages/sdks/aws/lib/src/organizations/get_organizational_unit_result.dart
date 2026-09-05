// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrganizationalUnit.
class GetOrganizationalUnitResult {
  /// ARN of the organizational unit
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? parentId;

  /// Creates a new [GetOrganizationalUnitResult].
  /// [arn] ARN of the organizational unit
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [parentId] Optional.
  const GetOrganizationalUnitResult({
    this.arn,
    this.id,
    this.name,
    this.parentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'parentId': ?parentId,
    };
  }

  factory GetOrganizationalUnitResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
