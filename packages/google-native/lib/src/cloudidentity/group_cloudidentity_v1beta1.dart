import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_group_metadata_response_cloudidentity_v1beta1.dart';
import 'entity_key_response_cloudidentity_v1beta1.dart';
import 'group_cloudidentity_v1beta1_args.dart';
import 'posix_group_response.dart';

/// Creates a `Group`.
/// Auto-naming is currently not supported for this resource.
class GroupCloudidentityV1beta1 extends pulumi.CustomResource {
  /// Additional group keys associated with the Group.
  late final pulumi.Output<List<EntityKeyResponseCloudidentityV1beta1>>
  additionalGroupKeys;

  /// The time when the `Group` was created.
  late final pulumi.Output<String> createTime;

  /// An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters.
  late final pulumi.Output<String> description;

  /// The display name of the `Group`.
  late final pulumi.Output<String> displayName;

  /// Optional. Dynamic group metadata like queries and status.
  late final pulumi.Output<DynamicGroupMetadataResponseCloudidentityV1beta1>
  dynamicGroupMetadata;

  /// The `EntityKey` of the `Group`.
  late final pulumi.Output<EntityKeyResponseCloudidentityV1beta1> groupKey;

  /// Required. The initial configuration option for the `Group`.
  late final pulumi.Output<String> initialGroupConfig;

  /// One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value.
  late final pulumi.Output<Map<String, String>> labels;

  /// The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be of the form `groups/{group_id}`.
  late final pulumi.Output<String> name;

  /// Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/{identity_source}` for external [identity-mapped groups](https://support.google.com/a/answer/9039510) or `customers/{customer_id}` for Google Groups. The `customer_id` must begin with "C" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)
  late final pulumi.Output<String> parent;

  /// Optional. The POSIX groups associated with the `Group`.
  late final pulumi.Output<List<PosixGroupResponse>> posixGroups;

  /// The time when the `Group` was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GroupCloudidentityV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupCloudidentityV1beta1]. {@macro pulumi_cloudidentity_v1beta1_group_cloudidentity_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupCloudidentityV1beta1(
    String name, {
    GroupCloudidentityV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudidentity/v1beta1:Group',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.additionalGroupKeys =
        registerOutput<List<EntityKeyResponseCloudidentityV1beta1>>(
          'additionalGroupKeys',
        );
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.dynamicGroupMetadata =
        registerOutput<DynamicGroupMetadataResponseCloudidentityV1beta1>(
          'dynamicGroupMetadata',
        );
    this.groupKey = registerOutput<EntityKeyResponseCloudidentityV1beta1>(
      'groupKey',
    );
    this.initialGroupConfig = registerOutput<String>('initialGroupConfig');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.posixGroups = registerOutput<List<PosixGroupResponse>>('posixGroups');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
