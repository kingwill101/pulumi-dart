// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationalUnit.
class GetOrganizationalUnitArgs {
  /// Name of the organizational unit
  final pulumi.Input<String> name;

  /// Parent ID of the organizational unit.
  final pulumi.Input<String> parentId;

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
      name: pulumi.Input.asInput<String>(map['name']),
      parentId: pulumi.Input.asInput<String>(map['parentId']),
    );
  }
}
