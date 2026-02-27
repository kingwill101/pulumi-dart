// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationalUnitDescendantOrganizationalUnits.
class GetOrganizationalUnitDescendantOrganizationalUnitsArgs {
  /// Parent ID of the organizational unit.
  final pulumi.Input<String> parentId;

  GetOrganizationalUnitDescendantOrganizationalUnitsArgs({
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parentId'] = parentId;
    return map;
  }

  factory GetOrganizationalUnitDescendantOrganizationalUnitsArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationalUnitDescendantOrganizationalUnitsArgs(
      parentId: pulumi.Input.asInput<String>(map['parentId']),
    );
  }
}
