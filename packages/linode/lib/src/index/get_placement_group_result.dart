// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_placement_group_member.dart';
import 'get_placement_group_migrations.dart';

/// Result data returned by getPlacementGroup.
class GetPlacementGroupResult {
  final int id;
  /// Whether this Linode is currently compliant with the group's placement group type.
  final bool isCompliant;
  /// The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  final String label;
  /// A set of Linodes currently assigned to this Placement Group.
  final List<GetPlacementGroupMember> members;
  /// Any Linodes that are being migrated to or from the placement group.
  final GetPlacementGroupMigrations migrations;
  /// Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  final String placementGroupPolicy;
  /// The placement group type to use when placing Linodes in this group.
  final String placementGroupType;
  /// The region of the Placement Group.
  final String region;

  /// Creates a new [GetPlacementGroupResult].
  /// [id] Required.
  /// [isCompliant] Whether this Linode is currently compliant with the group's placement group type.
  /// [label] The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  /// [members] A set of Linodes currently assigned to this Placement Group.
  /// [migrations] Any Linodes that are being migrated to or from the placement group.
  /// [placementGroupPolicy] Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  /// [placementGroupType] The placement group type to use when placing Linodes in this group.
  /// [region] The region of the Placement Group.
  GetPlacementGroupResult({
    required this.id,
    required this.isCompliant,
    required this.label,
    required this.members,
    required this.migrations,
    required this.placementGroupPolicy,
    required this.placementGroupType,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'isCompliant': isCompliant,
      'label': label,
      'members': pulumi.Input.encodeList<GetPlacementGroupMember, Map<String, dynamic>>(members, (value) => value.toMap()),
      'migrations': migrations.toMap(),
      'placementGroupPolicy': placementGroupPolicy,
      'placementGroupType': placementGroupType,
      'region': region,
    };
  }

  factory GetPlacementGroupResult.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupResult(
      id: map['id'] as int,
      isCompliant: map['isCompliant'] as bool,
      label: map['label'] as String,
      members: pulumi.Input.decodeList<GetPlacementGroupMember>(map['members'], (value) => GetPlacementGroupMember.fromMap((value as Map).cast<String, dynamic>())),
      migrations: GetPlacementGroupMigrations.fromMap((map['migrations'] as Map).cast<String, dynamic>()),
      placementGroupPolicy: map['placementGroupPolicy'] as String,
      placementGroupType: map['placementGroupType'] as String,
      region: map['region'] as String,
    );
  }
}

