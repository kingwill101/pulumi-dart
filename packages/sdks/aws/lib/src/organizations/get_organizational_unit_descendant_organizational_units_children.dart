// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationalUnitDescendantOrganizationalUnitsChildren {
  /// ARN of the organizational unit
  final pulumi.Input<String> arn;
  /// Parent identifier of the organizational units.
  final pulumi.Input<String> id;
  /// Name of the organizational unit
  final pulumi.Input<String> name;

  /// Creates a new [GetOrganizationalUnitDescendantOrganizationalUnitsChildren].
  /// [arn] ARN of the organizational unit
  /// [id] Parent identifier of the organizational units.
  /// [name] Name of the organizational unit
  const GetOrganizationalUnitDescendantOrganizationalUnitsChildren({
    required this.arn,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'name': name,
    };
  }

  factory GetOrganizationalUnitDescendantOrganizationalUnitsChildren.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitDescendantOrganizationalUnitsChildren(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
