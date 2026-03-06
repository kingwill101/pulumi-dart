// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ID of the parent management group.
class DescendantParentGroupInfoResponse {
  /// The fully qualified ID for the parent management group.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  final pulumi.Input<String>? id;

  /// Creates a new [DescendantParentGroupInfoResponse].
  /// [id] The fully qualified ID for the parent management group.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  const DescendantParentGroupInfoResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory DescendantParentGroupInfoResponse.fromMap(Map<String, dynamic> map) {
    return DescendantParentGroupInfoResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

