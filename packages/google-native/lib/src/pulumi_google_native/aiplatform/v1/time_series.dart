import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1_tensorboard_time_series_metadata_response.dart';
import 'time_series_args.dart';

/// Creates a TensorboardTimeSeries.
/// Auto-naming is currently not supported for this resource.
class TimeSeries extends CustomResource {
  /// Timestamp when this TensorboardTimeSeries was created.
  late final Output<String> createTime;

  /// Description of this TensorboardTimeSeries.
  late final Output<String> description;

  /// User provided name of this TensorboardTimeSeries. This value should be unique among all TensorboardTimeSeries resources belonging to the same TensorboardRun resource (parent resource).
  late final Output<String> displayName;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final Output<String> etag;
  late final Output<String> experimentId;
  late final Output<String> location;

  /// Scalar, Tensor, or Blob metadata for this TensorboardTimeSeries.
  late final Output<
      GoogleCloudAiplatformV1TensorboardTimeSeriesMetadataResponse> metadata;

  /// Name of the TensorboardTimeSeries.
  late final Output<String> name;

  /// Data of the current plugin, with the size limited to 65KB.
  late final Output<String> pluginData;

  /// Immutable. Name of the plugin this time series pertain to. Such as Scalar, Tensor, Blob
  late final Output<String> pluginName;
  late final Output<String> project;
  late final Output<String> runId;
  late final Output<String> tensorboardId;

  /// Optional. The user specified unique ID to use for the TensorboardTimeSeries, which becomes the final component of the TensorboardTimeSeries's resource name. This value should match "a-z0-9{0, 127}"
  late final Output<String?> tensorboardTimeSeriesId;

  /// Timestamp when this TensorboardTimeSeries was last updated.
  late final Output<String> updateTime;

  /// Immutable. Type of TensorboardTimeSeries value.
  late final Output<String> valueType;

  TimeSeries(
    String name, {
    TimeSeriesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:TimeSeries',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.experimentId = registerOutput<String>('experimentId');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<
            GoogleCloudAiplatformV1TensorboardTimeSeriesMetadataResponse>(
        'metadata');
    this.name = registerOutput<String>('name');
    this.pluginData = registerOutput<String>('pluginData');
    this.pluginName = registerOutput<String>('pluginName');
    this.project = registerOutput<String>('project');
    this.runId = registerOutput<String>('runId');
    this.tensorboardId = registerOutput<String>('tensorboardId');
    this.tensorboardTimeSeriesId =
        registerOutput<String?>('tensorboardTimeSeriesId');
    this.updateTime = registerOutput<String>('updateTime');
    this.valueType = registerOutput<String>('valueType');
  }
}
