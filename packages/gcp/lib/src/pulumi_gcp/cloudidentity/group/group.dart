import 'package:pulumi/pulumi.dart' as pulumi;
import '../group_additional_group_key/group_additional_group_key.dart';
import '../group_group_key/group_group_key.dart';
import 'group_args.dart';

/// A Cloud Identity resource representing a Group.
///
///
/// To get more information about Group, see:
///
/// * [API documentation](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/identity/docs/how-to/setup)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the Cloud Identity API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Cloud Identity Groups Basic
///
///
///
///
/// ## Import
///
/// Group can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Group can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudidentity/group:Group default {{name}}
/// ```
class Group extends pulumi.CustomResource {
  /// Additional group keys associated with the Group
  /// Structure is documented below.
  late final pulumi.Output<List<GroupAdditionalGroupKey>> additionalGroupKeys;

  /// The time when the Group was created.
  late final pulumi.Output<String> createTime;

  /// An extended description to help users determine the purpose of a Group.
  /// Must not be longer than 4,096 characters.
  late final pulumi.Output<String?> description;

  /// The display name of the Group.
  late final pulumi.Output<String?> displayName;

  /// EntityKey of the Group.
  /// Structure is documented below.
  late final pulumi.Output<GroupGroupKey> groupKey;

  /// The initial configuration options for creating a Group.
  /// See the
  /// [API reference](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups/create#initialgroupconfig)
  /// for possible values.
  /// Default value is `EMPTY`.
  /// Possible values are: `INITIAL_GROUP_CONFIG_UNSPECIFIED`, `WITH_INITIAL_OWNER`, `EMPTY`.
  late final pulumi.Output<String?> initialGroupConfig;

  /// One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.
  /// Google Groups are the default type of group and have a label with a key of cloudidentity.googleapis.com/groups.discussion_forum and an empty value.
  /// Existing Google Groups can have an additional label with a key of cloudidentity.googleapis.com/groups.security and an empty value added to them. This is an immutable change and the security label cannot be removed once added.
  /// Dynamic groups have a label with a key of cloudidentity.googleapis.com/groups.dynamic.
  /// Identity-mapped groups for Cloud Search have a label with a key of system/groups/external and an empty value.
  late final pulumi.Output<Map<String, String>> labels;

  /// Resource name of the Group in the format: groups/{group_id}, where group_id
  /// is the unique ID assigned to the Group.
  late final pulumi.Output<String> name;

  /// The resource name of the entity under which this Group resides in the
  /// Cloud Identity resource hierarchy.
  /// Must be of the form identitysources/{identity_source_id} for external-identity-mapped
  /// groups or customers/{customer_id} for Google Groups.
  late final pulumi.Output<String> parent;

  /// The time when the Group was last updated.
  late final pulumi.Output<String> updateTime;

  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudidentity/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalGroupKeys =
        registerOutput<List<GroupAdditionalGroupKey>>('additionalGroupKeys');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.groupKey = registerOutput<GroupGroupKey>('groupKey');
    this.initialGroupConfig = registerOutput<String?>('initialGroupConfig');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
