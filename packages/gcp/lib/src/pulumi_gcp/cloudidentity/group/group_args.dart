// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../group_group_key/group_group_key.dart';

/// The set of arguments for Group.
class GroupArgs {
  /// An extended description to help users determine the purpose of a Group.
  /// Must not be longer than 4,096 characters.
  final pulumi.Input<String>? description;

  /// The display name of the Group.
  final pulumi.Input<String>? displayName;

  /// EntityKey of the Group.
  /// Structure is documented below.
  final pulumi.Input<GroupGroupKey> groupKey;

  /// The initial configuration options for creating a Group.
  /// See the
  /// [API reference](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups/create#initialgroupconfig)
  /// for possible values.
  /// Default value is `EMPTY`.
  /// Possible values are: `INITIAL_GROUP_CONFIG_UNSPECIFIED`, `WITH_INITIAL_OWNER`, `EMPTY`.
  final pulumi.Input<String>? initialGroupConfig;

  /// One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.
  /// Google Groups are the default type of group and have a label with a key of cloudidentity.googleapis.com/groups.discussion_forum and an empty value.
  /// Existing Google Groups can have an additional label with a key of cloudidentity.googleapis.com/groups.security and an empty value added to them. This is an immutable change and the security label cannot be removed once added.
  /// Dynamic groups have a label with a key of cloudidentity.googleapis.com/groups.dynamic.
  /// Identity-mapped groups for Cloud Search have a label with a key of system/groups/external and an empty value.
  final pulumi.Input<Map<String, String>> labels;

  /// The resource name of the entity under which this Group resides in the
  /// Cloud Identity resource hierarchy.
  /// Must be of the form identitysources/{identity_source_id} for external-identity-mapped
  /// groups or customers/{customer_id} for Google Groups.
  final pulumi.Input<String> parent;

  GroupArgs({
    this.description,
    this.displayName,
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
    map['groupKey'] =
        pulumi.Input.mapInputValue<GroupGroupKey, Map<String, dynamic>>(
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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      groupKey: pulumi.Input.asInput<GroupGroupKey>(map['groupKey']),
      initialGroupConfig:
          pulumi.Input.asOptionalInput<String>(map['initialGroupConfig']),
      labels: pulumi.Input.asInput<Map<String, String>>(map['labels']),
      parent: pulumi.Input.asInput<String>(map['parent']),
    );
  }
}
