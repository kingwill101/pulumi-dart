// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_organizational_units_get_organizational_units_args_doc}
/// Arguments for getOrganizationalUnits.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_organizational_units_get_organizational_units_args_doc}
class GetOrganizationalUnitsArgs {
  /// Parent ID of the organizational unit.
  final pulumi.Input<String> parentId;

  /// Creates a new [GetOrganizationalUnitsArgs].
  /// [parentId] Parent ID of the organizational unit.
  const GetOrganizationalUnitsArgs({
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentId': parentId,
    };
  }

  factory GetOrganizationalUnitsArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitsArgs(
      parentId: pulumi.Input.fromValue(map['parentId'] as String),
    );
  }
}

