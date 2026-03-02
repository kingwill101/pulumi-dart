// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'thing_group_metadata_root_to_parent_group.dart';

class ThingGroupMetadata {
  final pulumi.Input<String>? creationDate;
  /// The name of the parent Thing Group.
  final pulumi.Input<String>? parentGroupName;
  final pulumi.Input<List<ThingGroupMetadataRootToParentGroup>>? rootToParentGroups;

  /// Creates a new [ThingGroupMetadata].
  /// [creationDate] Optional.
  /// [parentGroupName] The name of the parent Thing Group.
  /// [rootToParentGroups] Optional.
  ThingGroupMetadata({
    this.creationDate,
    this.parentGroupName,
    this.rootToParentGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationDate': ?creationDate,
      'parentGroupName': ?parentGroupName,
      'rootToParentGroups': ?pulumi.Input.mapOptionalInputValue<List<ThingGroupMetadataRootToParentGroup>, List<Map<String, dynamic>>>(rootToParentGroups, (value) => pulumi.Input.encodeList<ThingGroupMetadataRootToParentGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ThingGroupMetadata.fromMap(Map<String, dynamic> map) {
    return ThingGroupMetadata(
      creationDate: map['creationDate'] == null ? null : (map['creationDate'] as String).input(),
      parentGroupName: map['parentGroupName'] == null ? null : (map['parentGroupName'] as String).input(),
      rootToParentGroups: map['rootToParentGroups'] == null ? null : (pulumi.Input.decodeList<ThingGroupMetadataRootToParentGroup>(map['rootToParentGroups'], (value) => ThingGroupMetadataRootToParentGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

