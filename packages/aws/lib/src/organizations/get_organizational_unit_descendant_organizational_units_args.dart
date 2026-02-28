// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_organizational_unit_descendant_organizational_units_get_organizational_unit_descendant_organizational_units_args_doc}
/// Arguments for getOrganizationalUnitDescendantOrganizationalUnits.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_organizational_unit_descendant_organizational_units_get_organizational_unit_descendant_organizational_units_args_doc}
class GetOrganizationalUnitDescendantOrganizationalUnitsArgs {
  /// Parent ID of the organizational unit.
  final pulumi.Input<String> parentId;

  /// Creates a new [GetOrganizationalUnitDescendantOrganizationalUnitsArgs].
  /// [parentId] Parent ID of the organizational unit.
  GetOrganizationalUnitDescendantOrganizationalUnitsArgs({
    required String parentId,
  }) : parentId = pulumi.Input.asInput<String>(parentId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parentId'] = parentId;
    return map;
  }

  factory GetOrganizationalUnitDescendantOrganizationalUnitsArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationalUnitDescendantOrganizationalUnitsArgs(
      parentId: map['parentId'] as String,
    );
  }
}
