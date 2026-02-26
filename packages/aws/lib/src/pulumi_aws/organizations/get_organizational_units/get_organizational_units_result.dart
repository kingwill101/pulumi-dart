// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_organizational_units_child/get_organizational_units_child.dart';

/// Result data returned by getOrganizationalUnits.
class GetOrganizationalUnitsResult {
  /// List of child organizational units, which have the following attributes:
  final List<GetOrganizationalUnitsChild> children;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String parentId;

  GetOrganizationalUnitsResult({
    required this.children,
    required this.id,
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['children'] =
        Input.encodeList<GetOrganizationalUnitsChild, Map<String, dynamic>>(
            children, (value) => value.toMap());
    map['id'] = id;
    map['parentId'] = parentId;
    return map;
  }

  factory GetOrganizationalUnitsResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitsResult(
      children: Input.decodeList<GetOrganizationalUnitsChild>(
          map['children'],
          (value) => GetOrganizationalUnitsChild.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      parentId: map['parentId'] as String,
    );
  }
}
