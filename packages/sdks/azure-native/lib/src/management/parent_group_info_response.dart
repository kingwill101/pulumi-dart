// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// (Optional) The ID of the parent management group.
class ParentGroupInfoResponse {
  /// The friendly name of the parent management group.
  final pulumi.Input<String>? displayName;
  /// The fully qualified ID for the parent management group.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  final pulumi.Input<String>? id;
  /// The name of the parent management group
  final pulumi.Input<String>? name;

  /// Creates a new [ParentGroupInfoResponse].
  /// [displayName] The friendly name of the parent management group.
  /// [id] The fully qualified ID for the parent management group.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  /// [name] The name of the parent management group
  ParentGroupInfoResponse({
    this.displayName,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
    };
  }

  factory ParentGroupInfoResponse.fromMap(Map<String, dynamic> map) {
    return ParentGroupInfoResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

