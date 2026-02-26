import 'package:pulumi/pulumi.dart';
import 'target_project_args.dart';

/// Creates a new TargetProject in a given project. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.
/// Auto-naming is currently not supported for this resource.
class TargetProject extends CustomResource {
  /// The time this target project resource was created (not related to when the Compute Engine project it points to was created).
  late final Output<String> createTime;

  /// The target project's description.
  late final Output<String> description;
  late final Output<String> location;

  /// The name of the target project.
  late final Output<String> name;
  late final Output<String> project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Required. The target_project identifier.
  late final Output<String> targetProjectId;

  /// The last time the target project resource was updated.
  late final Output<String> updateTime;

  TargetProject(
    String name, {
    TargetProjectArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1:TargetProject',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.targetProjectId = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
