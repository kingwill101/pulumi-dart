// ignore_for_file: unused_element, unnecessary_cast

class GetOrganizationalUnitDescendantOrganizationalUnitsChildren {
  /// ARN of the organizational unit
  final String arn;

  /// Parent identifier of the organizational units.
  final String id;

  /// Name of the organizational unit
  final String name;

  /// Creates a new [GetOrganizationalUnitDescendantOrganizationalUnitsChildren].
  /// [arn] ARN of the organizational unit
  /// [id] Parent identifier of the organizational units.
  /// [name] Name of the organizational unit
  GetOrganizationalUnitDescendantOrganizationalUnitsChildren({
    required this.arn,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  factory GetOrganizationalUnitDescendantOrganizationalUnitsChildren.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationalUnitDescendantOrganizationalUnitsChildren(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
