import 'package:pulumi/pulumi.dart';
import 'group_args8.dart';

/// Creates a new Group in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Group8 extends CustomResource {
  /// The create time timestamp.
  late final Output<String> createTime;

  /// User-provided description of the group.
  late final Output<String> description;

  /// Display name is a user defined name for this group which can be updated.
  late final Output<String> displayName;

  /// Required. The group identifier.
  late final Output<String> groupId;
  late final Output<String> location;

  /// Immutable. The target type of this group.
  late final Output<String> migrationTargetType;

  /// The Group name.
  late final Output<String> name;
  late final Output<String> project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The update time timestamp.
  late final Output<String> updateTime;

  Group8(
    String name, {
    GroupArgs8? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1alpha1:Group',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.groupId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.migrationTargetType = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.updateTime = Output.createUnknown<String>();
  }
}
