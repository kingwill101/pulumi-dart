// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationalUnit.
class GetOrganizationalUnitArgs {
  /// Name of the organizational unit
  final Input<String> name;

  /// Parent ID of the organizational unit.
  final Input<String> parentId;

  GetOrganizationalUnitArgs({
    required this.name,
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['parentId'] = parentId;
    return map;
  }

  factory GetOrganizationalUnitArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitArgs(
      name: Input.asInput<String>(map['name']),
      parentId: Input.asInput<String>(map['parentId']),
    );
  }
}
