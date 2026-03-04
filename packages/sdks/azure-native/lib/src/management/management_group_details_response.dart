// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_group_path_element_response.dart';
import 'parent_group_info_response.dart';

/// The details of a management group.
class ManagementGroupDetailsResponse {
  /// The ancestors of the management group.
  final pulumi.Input<List<String>>? managementGroupAncestors;

  /// The ancestors of the management group displayed in reversed order, from immediate parent to the root.
  final pulumi.Input<List<ManagementGroupPathElementResponse>>?
  managementGroupAncestorsChain;

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
      'managementGroupAncestorsChain':
          ?pulumi.Input.mapOptionalInputValue<
            List<ManagementGroupPathElementResponse>,
            List<Map<String, dynamic>>
          >(
            managementGroupAncestorsChain,
            (value) =>
                pulumi.Input.encodeList<
                  ManagementGroupPathElementResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'parent':
          ?pulumi.Input.mapOptionalInputValue<
            ParentGroupInfoResponse,
            Map<String, dynamic>
          >(parent, (value) => value.toMap()),
      'path':
          ?pulumi.Input.mapOptionalInputValue<
            List<ManagementGroupPathElementResponse>,
            List<Map<String, dynamic>>
          >(
            path,
            (value) =>
                pulumi.Input.encodeList<
                  ManagementGroupPathElementResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'updatedBy': ?updatedBy,
      'updatedTime': ?updatedTime,
      'version': ?version,
    };
  }

  factory ManagementGroupDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ManagementGroupDetailsResponse(
      managementGroupAncestors: (() {
        final guardedValue = map['managementGroupAncestors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      managementGroupAncestorsChain: (() {
        final guardedValue = map['managementGroupAncestorsChain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ManagementGroupPathElementResponse>(
            guardedValue,
            (value) => ManagementGroupPathElementResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ParentGroupInfoResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ManagementGroupPathElementResponse>(
            guardedValue,
            (value) => ManagementGroupPathElementResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      updatedBy: (() {
        final guardedValue = map['updatedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updatedTime: (() {
        final guardedValue = map['updatedTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
