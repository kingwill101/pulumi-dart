// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organizational_unit_descendant_organizational_units_children.dart';

/// Result data returned by getOrganizationalUnitDescendantOrganizationalUnits.
class GetOrganizationalUnitDescendantOrganizationalUnitsResult {
  /// List of child organizational units, which have the following attributes:
  final List<GetOrganizationalUnitDescendantOrganizationalUnitsChildren>? childrens;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? parentId;

  /// Creates a new [GetOrganizationalUnitDescendantOrganizationalUnitsResult].
  /// [childrens] List of child organizational units, which have the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parentId] Optional.
  const GetOrganizationalUnitDescendantOrganizationalUnitsResult({
    this.childrens,
    this.id,
    this.parentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childrens': ?(() { final guardedValue = childrens; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOrganizationalUnitDescendantOrganizationalUnitsChildren, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'parentId': ?parentId,
    };
  }

  factory GetOrganizationalUnitDescendantOrganizationalUnitsResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitDescendantOrganizationalUnitsResult(
      childrens: (() { final guardedValue = map['childrens']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOrganizationalUnitDescendantOrganizationalUnitsChildren>(guardedValue, (value) => GetOrganizationalUnitDescendantOrganizationalUnitsChildren.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
