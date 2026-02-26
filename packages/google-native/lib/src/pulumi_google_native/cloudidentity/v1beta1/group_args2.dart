// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'dynamic_group_metadata2.dart';
import 'entity_key2.dart';
import 'posix_group.dart';

/// The set of arguments for Group.
class GroupArgs2 {
  /// An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters.
  final Input<String>? description;

  /// The display name of the `Group`.
  final Input<String>? displayName;

  /// Optional. Dynamic group metadata like queries and status.
  final Input<DynamicGroupMetadata2>? dynamicGroupMetadata;

  /// The `EntityKey` of the `Group`.
  final Input<EntityKey2> groupKey;

  /// Required. The initial configuration option for the `Group`.
  final Input<String> initialGroupConfig;

  /// One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value.
  final Input<Map<String, String>> labels;

  /// Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/{identity_source}` for external [identity-mapped groups](https://support.google.com/a/answer/9039510) or `customers/{customer_id}` for Google Groups. The `customer_id` must begin with "C" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)
  final Input<String> parent;

  /// Optional. The POSIX groups associated with the `Group`.
  final Input<List<PosixGroup>>? posixGroups;

  GroupArgs2({
    this.description,
    this.displayName,
    this.dynamicGroupMetadata,
    required this.groupKey,
    required this.initialGroupConfig,
    required this.labels,
    required this.parent,
    this.posixGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final dynamicGroupMetadataValue = dynamicGroupMetadata;
    if (dynamicGroupMetadataValue != null) {
      map['dynamicGroupMetadata'] = Input.mapOptionalInputValue<
              DynamicGroupMetadata2, Map<String, dynamic>>(
          dynamicGroupMetadataValue, (value) => value.toMap());
    }
    map['groupKey'] = Input.mapInputValue<EntityKey2, Map<String, dynamic>>(
        groupKey, (value) => value.toMap());
    map['initialGroupConfig'] = initialGroupConfig;
    map['labels'] = labels;
    map['parent'] = parent;
    final posixGroupsValue = posixGroups;
    if (posixGroupsValue != null) {
      map['posixGroups'] = Input.mapOptionalInputValue<List<PosixGroup>,
              List<Map<String, dynamic>>>(
          posixGroupsValue,
          (value) => Input.encodeList<PosixGroup, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory GroupArgs2.fromMap(Map<String, dynamic> map) {
    return GroupArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      dynamicGroupMetadata: Input.asOptionalInput<DynamicGroupMetadata2>(
          map['dynamicGroupMetadata']),
      groupKey: Input.asInput<EntityKey2>(map['groupKey']),
      initialGroupConfig: Input.asInput<String>(map['initialGroupConfig']),
      labels: Input.asInput<Map<String, String>>(map['labels']),
      parent: Input.asInput<String>(map['parent']),
      posixGroups: Input.asOptionalInput<List<PosixGroup>>(map['posixGroups']),
    );
  }
}
