// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../thing_group_metadata_root_to_parent_group/thing_group_metadata_root_to_parent_group.dart';

class ThingGroupMetadata {
  final String? creationDate;

  /// The name of the parent Thing Group.
  final String? parentGroupName;
  final List<ThingGroupMetadataRootToParentGroup>? rootToParentGroups;

  ThingGroupMetadata({
    this.creationDate,
    this.parentGroupName,
    this.rootToParentGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final creationDateValue = creationDate;
    if (creationDateValue != null) {
      map['creationDate'] = creationDateValue;
    }
    final parentGroupNameValue = parentGroupName;
    if (parentGroupNameValue != null) {
      map['parentGroupName'] = parentGroupNameValue;
    }
    final rootToParentGroupsValue = rootToParentGroups;
    if (rootToParentGroupsValue != null) {
      map['rootToParentGroups'] = Input.encodeList<
              ThingGroupMetadataRootToParentGroup, Map<String, dynamic>>(
          rootToParentGroupsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ThingGroupMetadata.fromMap(Map<String, dynamic> map) {
    return ThingGroupMetadata(
      creationDate:
          map['creationDate'] == null ? null : map['creationDate'] as String,
      parentGroupName: map['parentGroupName'] == null
          ? null
          : map['parentGroupName'] as String,
      rootToParentGroups: map['rootToParentGroups'] == null
          ? null
          : Input.decodeList<ThingGroupMetadataRootToParentGroup>(
              map['rootToParentGroups'],
              (value) => ThingGroupMetadataRootToParentGroup.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
