import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_migrationcenter_v1alpha1_args.dart';

/// Creates a new source in a given project and location.
/// Auto-naming is currently not supported for this resource.
class SourceMigrationcenterV1alpha1 extends pulumi.CustomResource {
  /// The timestamp when the source was created.
  late final pulumi.Output<String> createTime;

  /// Free-text description.
  late final pulumi.Output<String> description;

  /// User-friendly display name.
  late final pulumi.Output<String> displayName;

  /// The number of frames that were reported by the source and contained errors.
  late final pulumi.Output<int> errorFrameCount;

  /// If `true`, the source is managed by other service(s).
  late final pulumi.Output<bool> isManaged;
  late final pulumi.Output<String> location;

  /// The full name of the source.
  late final pulumi.Output<String> name;

  /// Number of frames that are still being processed.
  late final pulumi.Output<int> pendingFrameCount;

  /// The information confidence of the source. The higher the value, the higher the confidence.
  late final pulumi.Output<int> priority;
  late final pulumi.Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Required. User specified ID for the source. It will become the last component of the source name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  late final pulumi.Output<String> sourceId;

  /// The state of the source.
  late final pulumi.Output<String> state;

  /// Data source type.
  late final pulumi.Output<String> type;

  /// The timestamp when the source was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SourceMigrationcenterV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceMigrationcenterV1alpha1]. {@macro pulumi_migrationcenter_v1alpha1_source_migrationcenter_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceMigrationcenterV1alpha1(
    String name, {
    SourceMigrationcenterV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:migrationcenter/v1alpha1:Source',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.errorFrameCount = registerOutput<int>('errorFrameCount');
    this.isManaged = registerOutput<bool>('isManaged');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.pendingFrameCount = registerOutput<int>('pendingFrameCount');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.sourceId = registerOutput<String>('sourceId');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
