// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_group_path_element_response.dart';
import 'parent_group_info_response.dart';

/// The details of a management group.
class ManagementGroupDetailsResponse {
  /// The ancestors of the management group.
  final pulumi.Input<List<String>>? managementGroupAncestors;
  /// The ancestors of the management group displayed in reversed order, from immediate parent to the root.
  final pulumi.Input<List<ManagementGroupPathElementResponse>>? managementGroupAncestorsChain;
  /// (Optional) The ID of the parent management group.
  final pulumi.Input<ParentGroupInfoResponse>? parent;
  /// The path from the root to the current group.
  final pulumi.Input<List<ManagementGroupPathElementResponse>>? path;
  /// The identity of the principal or process that updated the object.
  final pulumi.Input<String>? updatedBy;
  /// The date and time when this object was last updated.
  final pulumi.Input<String>? updatedTime;
  /// The version number of the object.
  final pulumi.Input<int>? version;

  /// Creates a new [ManagementGroupDetailsResponse].
  /// [managementGroupAncestors] The ancestors of the management group.
  /// [managementGroupAncestorsChain] The ancestors of the management group displayed in reversed order, from immediate parent to the root.
  /// [parent] (Optional) The ID of the parent management group.
  /// [path] The path from the root to the current group.
  /// [updatedBy] The identity of the principal or process that updated the object.
  /// [updatedTime] The date and time when this object was last updated.
  /// [version] The version number of the object.
  ManagementGroupDetailsResponse({
    this.managementGroupAncestors,
    this.managementGroupAncestorsChain,
    this.parent,
    this.path,
    this.updatedBy,
    this.updatedTime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupAncestors': ?managementGroupAncestors,
      'managementGroupAncestorsChain': ?pulumi.Input.mapOptionalInputValue<List<ManagementGroupPathElementResponse>, List<Map<String, dynamic>>>(managementGroupAncestorsChain, (value) => pulumi.Input.encodeList<ManagementGroupPathElementResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parent': ?pulumi.Input.mapOptionalInputValue<ParentGroupInfoResponse, Map<String, dynamic>>(parent, (value) => value.toMap()),
      'path': ?pulumi.Input.mapOptionalInputValue<List<ManagementGroupPathElementResponse>, List<Map<String, dynamic>>>(path, (value) => pulumi.Input.encodeList<ManagementGroupPathElementResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedBy': ?updatedBy,
      'updatedTime': ?updatedTime,
      'version': ?version,
    };
  }

  factory ManagementGroupDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ManagementGroupDetailsResponse(
      managementGroupAncestors: map['managementGroupAncestors'] == null ? null : ((map['managementGroupAncestors']! as List).cast<String>()).input(),
      managementGroupAncestorsChain: map['managementGroupAncestorsChain'] == null ? null : (pulumi.Input.decodeList<ManagementGroupPathElementResponse>(map['managementGroupAncestorsChain']!, (value) => ManagementGroupPathElementResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parent: map['parent'] == null ? null : (ParentGroupInfoResponse.fromMap((map['parent']! as Map).cast<String, dynamic>())).input(),
      path: map['path'] == null ? null : (pulumi.Input.decodeList<ManagementGroupPathElementResponse>(map['path']!, (value) => ManagementGroupPathElementResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      updatedBy: map['updatedBy'] == null ? null : (map['updatedBy']! as String).input(),
      updatedTime: map['updatedTime'] == null ? null : (map['updatedTime']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as int).input(),
    );
  }
}

