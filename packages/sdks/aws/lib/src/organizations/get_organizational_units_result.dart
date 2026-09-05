// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organizational_units_child.dart';

/// Result data returned by getOrganizationalUnits.
class GetOrganizationalUnitsResult {
  /// List of child organizational units, which have the following attributes:
  final List<GetOrganizationalUnitsChild>? children;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? parentId;

  /// Creates a new [GetOrganizationalUnitsResult].
  /// [children] List of child organizational units, which have the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parentId] Optional.
  const GetOrganizationalUnitsResult({
    this.children,
    this.id,
    this.parentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'children': ?(() { final guardedValue = children; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOrganizationalUnitsChild, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'parentId': ?parentId,
    };
  }

  factory GetOrganizationalUnitsResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitsResult(
      children: (() { final guardedValue = map['children']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOrganizationalUnitsChild>(guardedValue, (value) => GetOrganizationalUnitsChild.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
