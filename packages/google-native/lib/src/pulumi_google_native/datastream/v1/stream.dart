import 'package:pulumi/pulumi.dart' hide Config;
import 'backfill_all_strategy_response.dart';
import 'destination_config_response2.dart';
import 'error_response.dart';
import 'source_config_response2.dart';
import 'stream_args.dart';

/// Use this method to create a stream.
/// Auto-naming is currently not supported for this resource.
class Stream extends CustomResource {
  /// Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  late final Output<BackfillAllStrategyResponse> backfillAll;

  /// Do not automatically backfill any objects.
  late final Output<Map<String, dynamic>> backfillNone;

  /// The creation time of the stream.
  late final Output<String> createTime;

  /// Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  late final Output<String> customerManagedEncryptionKey;

  /// Destination connection profile configuration.
  late final Output<DestinationConfigResponse2> destinationConfig;

  /// Display name.
  late final Output<String> displayName;

  /// Errors on the Stream.
  late final Output<List<ErrorResponse>> errors;

  /// Optional. Create the stream without validating it.
  late final Output<bool?> force;

  /// Labels.
  late final Output<Map<String, String>> labels;

  /// If the stream was recovered, the time of the last recovery. Note: This field is currently experimental.
  late final Output<String> lastRecoveryTime;
  late final Output<String> location;

  /// The stream's name.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Source connection profile configuration.
  late final Output<SourceConfigResponse2> sourceConfig;

  /// The state of the stream.
  late final Output<String> state;

  /// Required. The stream identifier.
  late final Output<String> streamId;

  /// The last update time of the stream.
  late final Output<String> updateTime;

  Stream(
    String name, {
    StreamArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datastream/v1:Stream',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backfillAll =
        registerOutput<BackfillAllStrategyResponse>('backfillAll');
    this.backfillNone = registerOutput<Map<String, dynamic>>('backfillNone');
    this.createTime = registerOutput<String>('createTime');
    this.customerManagedEncryptionKey =
        registerOutput<String>('customerManagedEncryptionKey');
    this.destinationConfig =
        registerOutput<DestinationConfigResponse2>('destinationConfig');
    this.displayName = registerOutput<String>('displayName');
    this.errors = registerOutput<List<ErrorResponse>>('errors');
    this.force = registerOutput<bool?>('force');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.lastRecoveryTime = registerOutput<String>('lastRecoveryTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.sourceConfig = registerOutput<SourceConfigResponse2>('sourceConfig');
    this.state = registerOutput<String>('state');
    this.streamId = registerOutput<String>('streamId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
