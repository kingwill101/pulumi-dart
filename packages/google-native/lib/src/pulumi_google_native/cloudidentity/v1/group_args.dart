// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'dynamic_group_metadata.dart';
import 'entity_key.dart';

/// The set of arguments for Group.
class GroupArgs {
  /// An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters.
  final Input<String>? description;

  /// The display name of the `Group`.
  final Input<String>? displayName;

  /// Optional. Dynamic group metadata like queries and status.
  final Input<DynamicGroupMetadata>? dynamicGroupMetadata;

  /// The `EntityKey` of the `Group`.
  final Input<EntityKey> groupKey;

  /// Optional. The initial configuration option for the `Group`.
  final Input<String>? initialGroupConfig;

  /// One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value.
  final Input<Map<String, String>> labels;

  /// Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/{identity_source}` for external [identity-mapped groups](https://support.google.com/a/answer/9039510) or `customers/{customer_id}` for Google Groups. The `customer_id` must begin with "C" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)
  final Input<String> parent;

  GroupArgs({
    this.description,
    this.displayName,
    this.dynamicGroupMetadata,
    required this.groupKey,
    this.initialGroupConfig,
    required this.labels,
    required this.parent,
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
              DynamicGroupMetadata, Map<String, dynamic>>(
          dynamicGroupMetadataValue, (value) => value.toMap());
    }
    map['groupKey'] = Input.mapInputValue<EntityKey, Map<String, dynamic>>(
        groupKey, (value) => value.toMap());
    final initialGroupConfigValue = initialGroupConfig;
    if (initialGroupConfigValue != null) {
      map['initialGroupConfig'] = initialGroupConfigValue;
    }
    map['labels'] = labels;
    map['parent'] = parent;
    return map;
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      dynamicGroupMetadata: Input.asOptionalInput<DynamicGroupMetadata>(
          map['dynamicGroupMetadata']),
      groupKey: Input.asInput<EntityKey>(map['groupKey']),
      initialGroupConfig:
          Input.asOptionalInput<String>(map['initialGroupConfig']),
      labels: Input.asInput<Map<String, String>>(map['labels']),
      parent: Input.asInput<String>(map['parent']),
    );
  }
}
