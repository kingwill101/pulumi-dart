import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_vmmigration_v1alpha1_args.dart';

/// Creates a new Group in a given project and location.
/// Auto-naming is currently not supported for this resource.
class GroupVmmigrationV1alpha1 extends pulumi.CustomResource {
  /// The create time timestamp.
  late final pulumi.Output<String> createTime;

  /// User-provided description of the group.
  late final pulumi.Output<String> description;

  /// Display name is a user defined name for this group which can be updated.
  late final pulumi.Output<String> displayName;

  /// Required. The group identifier.
  late final pulumi.Output<String> groupId;
  late final pulumi.Output<String> location;

  /// Immutable. The target type of this group.
  late final pulumi.Output<String> migrationTargetType;

  /// The Group name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The update time timestamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GroupVmmigrationV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupVmmigrationV1alpha1]. {@macro pulumi_vmmigration_v1alpha1_group_vmmigration_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupVmmigrationV1alpha1(
    String name, {
    GroupVmmigrationV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1alpha1:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.groupId = registerOutput<String>('groupId');
    this.location = registerOutput<String>('location');
    this.migrationTargetType = registerOutput<String>('migrationTargetType');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
