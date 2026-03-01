// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The child information of a management group.
class ManagementGroupChildInfoResponse {
  /// The list of children.
  final List<ManagementGroupChildInfoResponse>? children;
  /// The friendly name of the child resource.
  final String? displayName;
  /// The fully qualified ID for the child resource (management group or subscription).  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  final String? id;
  /// The name of the child entity.
  final String? name;
  /// The fully qualified resource type which includes provider namespace (e.g. Microsoft.Management/managementGroups)
  final String? type;

  /// Creates a new [ManagementGroupChildInfoResponse].
  /// [children] The list of children.
  /// [displayName] The friendly name of the child resource.
  /// [id] The fully qualified ID for the child resource (management group or subscription).  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  /// [name] The name of the child entity.
  /// [type] The fully qualified resource type which includes provider namespace (e.g. Microsoft.Management/managementGroups)
  ManagementGroupChildInfoResponse({
    this.children,
    this.displayName,
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'children': ?children == null ? null : pulumi.Input.encodeList<ManagementGroupChildInfoResponse, Map<String, dynamic>>(children!, (value) => value.toMap()),
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'type': ?type,
    };
  }

  factory ManagementGroupChildInfoResponse.fromMap(Map<String, dynamic> map) {
    return ManagementGroupChildInfoResponse(
      children: map['children'] == null ? null : pulumi.Input.decodeList<ManagementGroupChildInfoResponse>(map['children'], (value) => ManagementGroupChildInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

