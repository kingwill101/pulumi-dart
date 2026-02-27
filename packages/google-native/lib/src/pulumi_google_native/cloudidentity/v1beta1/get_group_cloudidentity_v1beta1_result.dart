// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_group_metadata_response_cloudidentity_v1beta1.dart';
import 'entity_key_response_cloudidentity_v1beta1.dart';
import 'posix_group_response.dart';

/// Result data returned by getGroup.
class GetGroupCloudidentityV1beta1Result {
  /// Additional group keys associated with the Group.
  final List<EntityKeyResponseCloudidentityV1beta1> additionalGroupKeys;

  /// The time when the `Group` was created.
  final String createTime;

  /// An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters.
  final String description;

  /// The display name of the `Group`.
  final String displayName;

  /// Optional. Dynamic group metadata like queries and status.
  final DynamicGroupMetadataResponseCloudidentityV1beta1 dynamicGroupMetadata;

  /// The `EntityKey` of the `Group`.
  final EntityKeyResponseCloudidentityV1beta1 groupKey;

  /// One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value.
  final Map<String, String> labels;

  /// The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be of the form `groups/{group_id}`.
  final String name;

  /// Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/{identity_source}` for external [identity-mapped groups](https://support.google.com/a/answer/9039510) or `customers/{customer_id}` for Google Groups. The `customer_id` must begin with "C" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)
  final String parent;

  /// Optional. The POSIX groups associated with the `Group`.
  final List<PosixGroupResponse> posixGroups;

  /// The time when the `Group` was last updated.
  final String updateTime;

  GetGroupCloudidentityV1beta1Result({
    required this.additionalGroupKeys,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.dynamicGroupMetadata,
    required this.groupKey,
    required this.labels,
    required this.name,
    required this.parent,
    required this.posixGroups,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalGroupKeys'] = pulumi.Input.encodeList<
        EntityKeyResponseCloudidentityV1beta1,
        Map<String, dynamic>>(additionalGroupKeys, (value) => value.toMap());
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['dynamicGroupMetadata'] = dynamicGroupMetadata.toMap();
    map['groupKey'] = groupKey.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['parent'] = parent;
    map['posixGroups'] =
        pulumi.Input.encodeList<PosixGroupResponse, Map<String, dynamic>>(
            posixGroups, (value) => value.toMap());
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetGroupCloudidentityV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetGroupCloudidentityV1beta1Result(
      additionalGroupKeys:
          pulumi.Input.decodeList<EntityKeyResponseCloudidentityV1beta1>(
              map['additionalGroupKeys'],
              (value) => EntityKeyResponseCloudidentityV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      dynamicGroupMetadata:
          DynamicGroupMetadataResponseCloudidentityV1beta1.fromMap(
              (map['dynamicGroupMetadata'] as Map).cast<String, dynamic>()),
      groupKey: EntityKeyResponseCloudidentityV1beta1.fromMap(
          (map['groupKey'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      parent: map['parent'] as String,
      posixGroups: pulumi.Input.decodeList<PosixGroupResponse>(
          map['posixGroups'],
          (value) => PosixGroupResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
