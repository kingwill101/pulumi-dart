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
  const ThingGroupMetadata({
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
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentGroupName: (() { final guardedValue = map['parentGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootToParentGroups: (() { final guardedValue = map['rootToParentGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThingGroupMetadataRootToParentGroup>(guardedValue, (value) => ThingGroupMetadataRootToParentGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

