// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_organizational_unit_get_organizational_unit_args_doc}
/// Arguments for getOrganizationalUnit.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_organizational_unit_get_organizational_unit_args_doc}
class GetOrganizationalUnitArgs {
  /// Name of the organizational unit
  final pulumi.Input<String> name;
  /// Parent ID of the organizational unit.
  final pulumi.Input<String> parentId;

  /// Creates a new [GetOrganizationalUnitArgs].
  /// [name] Name of the organizational unit
  /// [parentId] Parent ID of the organizational unit.
  GetOrganizationalUnitArgs({
    required this.name,
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parentId': parentId,
    };
  }

  factory GetOrganizationalUnitArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitArgs(
      name: (map['name'] as String).input(),
      parentId: (map['parentId'] as String).input(),
    );
  }
}

