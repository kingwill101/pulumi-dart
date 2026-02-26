import 'package:pulumi/pulumi.dart';
import 'source_args2.dart';

/// Creates a new source in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Source13 extends CustomResource {
  /// The timestamp when the source was created.
  late final Output<String> createTime;

  /// Free-text description.
  late final Output<String> description;

  /// User-friendly display name.
  late final Output<String> displayName;

  /// The number of frames that were reported by the source and contained errors.
  late final Output<int> errorFrameCount;

  /// If `true`, the source is managed by other service(s).
  late final Output<bool> isManaged;
  late final Output<String> location;

  /// The full name of the source.
  late final Output<String> name;

  /// Number of frames that are still being processed.
  late final Output<int> pendingFrameCount;

  /// The information confidence of the source. The higher the value, the higher the confidence.
  late final Output<int> priority;
  late final Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Required. User specified ID for the source. It will become the last component of the source name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  late final Output<String> sourceId;

  /// The state of the source.
  late final Output<String> state;

  /// Data source type.
  late final Output<String> type;

  /// The timestamp when the source was last updated.
  late final Output<String> updateTime;

  Source13(
    String name, {
    SourceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:migrationcenter/v1alpha1:Source',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.errorFrameCount = Output.createUnknown<int>();
    this.isManaged = Output.createUnknown<bool>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.pendingFrameCount = Output.createUnknown<int>();
    this.priority = Output.createUnknown<int>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.sourceId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
