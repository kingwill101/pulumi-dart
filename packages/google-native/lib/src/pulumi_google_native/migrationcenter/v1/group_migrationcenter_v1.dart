import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_migrationcenter_v1_args.dart';

/// Creates a new group in a given project and location.
/// Auto-naming is currently not supported for this resource.
class GroupMigrationcenterV1 extends pulumi.CustomResource {
  /// The timestamp when the group was created.
  late final pulumi.Output<String> createTime;

  /// Optional. The description of the group.
  late final pulumi.Output<String> description;

  /// Optional. User-friendly display name.
  late final pulumi.Output<String> displayName;

  /// Required. User specified ID for the group. It will become the last component of the group name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  late final pulumi.Output<String> groupId;

  /// Labels as key value pairs.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The name of the group.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The timestamp when the group was last updated.
  late final pulumi.Output<String> updateTime;

  GroupMigrationcenterV1(
    String name, {
    GroupMigrationcenterV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:migrationcenter/v1:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.groupId = registerOutput<String>('groupId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
