import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_migrationcenter_args.dart';

/// A resource that represents an asset group. The purpose of an asset group is to bundle a set of assets that have something in common, while allowing users to add annotations to the group.
///
///
///
/// ## Example Usage
///
/// ### Migration Group Basic
///
///
///
///
/// ## Import
///
/// Group can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/groups/{{group_id}}`
///
/// * `{{project}}/{{location}}/{{group_id}}`
///
/// * `{{location}}/{{group_id}}`
///
/// When using the `pulumi import` command, Group can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/group:Group default projects/{{project}}/locations/{{location}}/groups/{{group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/group:Group default {{project}}/{{location}}/{{group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/group:Group default {{location}}/{{group_id}}
/// ```
class GroupMigrationcenter extends pulumi.CustomResource {
  /// Output only. The timestamp when the group was created.
  late final pulumi.Output<String> createTime;

  /// Optional. The description of the group.
  late final pulumi.Output<String?> description;

  /// Optional. User-friendly display name.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Required. User specified ID for the group. It will become the last component of the group name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: `a-z?`.
  late final pulumi.Output<String> groupId;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the group.
  late final pulumi.Output<String> location;

  /// Output only. The name of the group.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. The timestamp when the group was last updated.
  late final pulumi.Output<String> updateTime;

  GroupMigrationcenter(
    String name, {
    GroupMigrationcenterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.groupId = registerOutput<String>('groupId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
