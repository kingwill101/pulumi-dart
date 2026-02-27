import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_tensorboard_time_series_metadata_response.dart';
import 'time_series_aiplatform_v1beta1_args.dart';

/// Creates a TensorboardTimeSeries.
/// Auto-naming is currently not supported for this resource.
class TimeSeriesAiplatformV1beta1 extends pulumi.CustomResource {
  /// Timestamp when this TensorboardTimeSeries was created.
  late final pulumi.Output<String> createTime;

  /// Description of this TensorboardTimeSeries.
  late final pulumi.Output<String> description;

  /// User provided name of this TensorboardTimeSeries. This value should be unique among all TensorboardTimeSeries resources belonging to the same TensorboardRun resource (parent resource).
  late final pulumi.Output<String> displayName;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> experimentId;
  late final pulumi.Output<String> location;

  /// Scalar, Tensor, or Blob metadata for this TensorboardTimeSeries.
  late final pulumi
      .Output<GoogleCloudAiplatformV1beta1TensorboardTimeSeriesMetadataResponse>
      metadata;

  /// Name of the TensorboardTimeSeries.
  late final pulumi.Output<String> name;

  /// Data of the current plugin, with the size limited to 65KB.
  late final pulumi.Output<String> pluginData;

  /// Immutable. Name of the plugin this time series pertain to. Such as Scalar, Tensor, Blob
  late final pulumi.Output<String> pluginName;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> runId;
  late final pulumi.Output<String> tensorboardId;

  /// Optional. The user specified unique ID to use for the TensorboardTimeSeries, which becomes the final component of the TensorboardTimeSeries's resource name. This value should match "a-z0-9{0, 127}"
  late final pulumi.Output<String?> tensorboardTimeSeriesId;

  /// Timestamp when this TensorboardTimeSeries was last updated.
  late final pulumi.Output<String> updateTime;

  /// Immutable. Type of TensorboardTimeSeries value.
  late final pulumi.Output<String> valueType;

  TimeSeriesAiplatformV1beta1(
    String name, {
    TimeSeriesAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:TimeSeries',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.experimentId = registerOutput<String>('experimentId');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<
            GoogleCloudAiplatformV1beta1TensorboardTimeSeriesMetadataResponse>(
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
