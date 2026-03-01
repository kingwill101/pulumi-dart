// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'thing_group_metadata_root_to_parent_group.dart';

class ThingGroupMetadata {
  final String? creationDate;
  /// The name of the parent Thing Group.
  final String? parentGroupName;
  final List<ThingGroupMetadataRootToParentGroup>? rootToParentGroups;

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
      'rootToParentGroups': ?rootToParentGroups == null ? null : pulumi.Input.encodeList<ThingGroupMetadataRootToParentGroup, Map<String, dynamic>>(rootToParentGroups!, (value) => value.toMap()),
    };
  }

  factory ThingGroupMetadata.fromMap(Map<String, dynamic> map) {
    return ThingGroupMetadata(
      creationDate: map['creationDate'] == null ? null : map['creationDate'] as String,
      parentGroupName: map['parentGroupName'] == null ? null : map['parentGroupName'] as String,
      rootToParentGroups: map['rootToParentGroups'] == null ? null : pulumi.Input.decodeList<ThingGroupMetadataRootToParentGroup>(map['rootToParentGroups'], (value) => ThingGroupMetadataRootToParentGroup.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

