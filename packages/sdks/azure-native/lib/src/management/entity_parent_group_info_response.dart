// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// (Optional) The ID of the parent management group.
class EntityParentGroupInfoResponse {
  /// The fully qualified ID for the parent management group.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  final pulumi.Input<String?>? id;

  /// Creates a new [EntityParentGroupInfoResponse].
  /// [id] The fully qualified ID for the parent management group.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  const EntityParentGroupInfoResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory EntityParentGroupInfoResponse.fromMap(Map<String, dynamic> map) {
    return EntityParentGroupInfoResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
