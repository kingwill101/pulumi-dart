// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The child information of a management group.
class ManagementGroupChildInfoResponse {
  /// The list of children.
  final pulumi.Input<List<ManagementGroupChildInfoResponse>>? children;
  /// The friendly name of the child resource.
  final pulumi.Input<String>? displayName;
  /// The fully qualified ID for the child resource (management group or subscription).  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  final pulumi.Input<String>? id;
  /// The name of the child entity.
  final pulumi.Input<String>? name;
  /// The fully qualified resource type which includes provider namespace (e.g. Microsoft.Management/managementGroups)
  final pulumi.Input<String>? type;

  /// Creates a new [ManagementGroupChildInfoResponse].
  /// [children] The list of children.
  /// [displayName] The friendly name of the child resource.
  /// [id] The fully qualified ID for the child resource (management group or subscription).  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  /// [name] The name of the child entity.
  /// [type] The fully qualified resource type which includes provider namespace (e.g. Microsoft.Management/managementGroups)
  const ManagementGroupChildInfoResponse({
    this.children,
    this.displayName,
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'children': ?pulumi.Input.mapOptionalInputValue<List<ManagementGroupChildInfoResponse>, List<Map<String, dynamic>>>(children, (value) => pulumi.Input.encodeList<ManagementGroupChildInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'type': ?type,
    };
  }

  factory ManagementGroupChildInfoResponse.fromMap(Map<String, dynamic> map) {
    return ManagementGroupChildInfoResponse(
      children: (() { final guardedValue = map['children']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagementGroupChildInfoResponse>(guardedValue, (value) => ManagementGroupChildInfoResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

