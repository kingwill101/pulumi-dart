import 'package:pulumi/pulumi.dart' as pulumi;
import 'backfill_all_strategy_response.dart';
import 'destination_config_response.dart';
import 'error_response.dart';
import 'source_config_response.dart';
import 'stream_args.dart';

/// Use this method to create a stream.
/// Auto-naming is currently not supported for this resource.
class Stream extends pulumi.CustomResource {
  /// Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  late final pulumi.Output<BackfillAllStrategyResponse> backfillAll;

  /// Do not automatically backfill any objects.
  late final pulumi.Output<Map<String, dynamic>> backfillNone;

  /// The creation time of the stream.
  late final pulumi.Output<String> createTime;

  /// Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  late final pulumi.Output<String> customerManagedEncryptionKey;

  /// Destination connection profile configuration.
  late final pulumi.Output<DestinationConfigResponse> destinationConfig;

  /// Display name.
  late final pulumi.Output<String> displayName;

  /// Errors on the Stream.
  late final pulumi.Output<List<ErrorResponse>> errors;

  /// Optional. Create the stream without validating it.
  late final pulumi.Output<bool?> force;

  /// Labels.
  late final pulumi.Output<Map<String, String>> labels;

  /// If the stream was recovered, the time of the last recovery. Note: This field is currently experimental.
  late final pulumi.Output<String> lastRecoveryTime;
  late final pulumi.Output<String> location;

  /// The stream's name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Source connection profile configuration.
  late final pulumi.Output<SourceConfigResponse> sourceConfig;

  /// The state of the stream.
  late final pulumi.Output<String> state;

  /// Required. The stream identifier.
  late final pulumi.Output<String> streamId;

  /// The last update time of the stream.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Stream].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Stream]. {@macro pulumi_datastream_v1_stream_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Stream(
    String name, {
    StreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datastream/v1:Stream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backfillAll =
        registerOutput<BackfillAllStrategyResponse>('backfillAll');
    this.backfillNone = registerOutput<Map<String, dynamic>>('backfillNone');
    this.createTime = registerOutput<String>('createTime');
    this.customerManagedEncryptionKey =
        registerOutput<String>('customerManagedEncryptionKey');
    this.destinationConfig =
        registerOutput<DestinationConfigResponse>('destinationConfig');
    this.displayName = registerOutput<String>('displayName');
    this.errors = registerOutput<List<ErrorResponse>>('errors');
    this.force = registerOutput<bool?>('force');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.lastRecoveryTime = registerOutput<String>('lastRecoveryTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.sourceConfig = registerOutput<SourceConfigResponse>('sourceConfig');
    this.state = registerOutput<String>('state');
    this.streamId = registerOutput<String>('streamId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
