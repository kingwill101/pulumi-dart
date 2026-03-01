// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backfill_all_strategy_datastream_v1alpha1.dart';
import 'destination_config_datastream_v1alpha1.dart';
import 'source_config_datastream_v1alpha1.dart';
import 'stream_state_datastream_v1alpha1.dart';

/// {@template pulumi_datastream_v1alpha1_stream_datastream_v1alpha1_args_doc}
/// The set of arguments for Stream.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1alpha1_stream_datastream_v1alpha1_args_doc}
class StreamDatastreamV1alpha1Args {
  /// Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  final pulumi.Input<BackfillAllStrategyDatastreamV1alpha1>? backfillAll;

  /// Do not automatically backfill any objects.
  final pulumi.Input<Map<String, dynamic>>? backfillNone;

  /// Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  final pulumi.Input<String>? customerManagedEncryptionKey;

  /// Destination connection profile configuration.
  final pulumi.Input<DestinationConfigDatastreamV1alpha1> destinationConfig;

  /// Display name.
  final pulumi.Input<String> displayName;

  /// Optional. Create the stream without validating it.
  final pulumi.Input<bool>? force;

  /// Labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Source connection profile configuration.
  final pulumi.Input<SourceConfigDatastreamV1alpha1> sourceConfig;

  /// The state of the stream.
  final pulumi.Input<StreamStateDatastreamV1alpha1>? state;

  /// Required. The stream identifier.
  final pulumi.Input<String> streamId;

  /// Creates a new [StreamDatastreamV1alpha1Args].
  /// [backfillAll] Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  /// [backfillNone] Do not automatically backfill any objects.
  /// [customerManagedEncryptionKey] Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  /// [destinationConfig] Destination connection profile configuration.
  /// [displayName] Display name.
  /// [force] Optional. Create the stream without validating it.
  /// [labels] Labels.
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [sourceConfig] Source connection profile configuration.
  /// [state] The state of the stream.
  /// [streamId] Required. The stream identifier.
  StreamDatastreamV1alpha1Args({
    BackfillAllStrategyDatastreamV1alpha1? backfillAll,
    Map<String, dynamic>? backfillNone,
    String? customerManagedEncryptionKey,
    required DestinationConfigDatastreamV1alpha1 destinationConfig,
    required String displayName,
    bool? force,
    Map<String, String>? labels,
    String? location,
    String? project,
    String? requestId,
    required SourceConfigDatastreamV1alpha1 sourceConfig,
    StreamStateDatastreamV1alpha1? state,
    required String streamId,
  }) : backfillAll =
           pulumi.Input.asOptionalInput<BackfillAllStrategyDatastreamV1alpha1>(
             backfillAll,
           ),
       backfillNone = pulumi.Input.asOptionalInput<Map<String, dynamic>>(
         backfillNone,
       ),
       customerManagedEncryptionKey = pulumi.Input.asOptionalInput<String>(
         customerManagedEncryptionKey,
       ),
       destinationConfig =
           pulumi.Input.asInput<DestinationConfigDatastreamV1alpha1>(
             destinationConfig,
           ),
       displayName = pulumi.Input.asInput<String>(displayName),
       force = pulumi.Input.asOptionalInput<bool>(force),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       sourceConfig = pulumi.Input.asInput<SourceConfigDatastreamV1alpha1>(
         sourceConfig,
       ),
       state = pulumi.Input.asOptionalInput<StreamStateDatastreamV1alpha1>(
         state,
       ),
       streamId = pulumi.Input.asInput<String>(streamId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backfillAll':
          ?pulumi.Input.mapOptionalInputValue<
            BackfillAllStrategyDatastreamV1alpha1,
            Map<String, dynamic>
          >(backfillAll, (value) => value.toMap()),
      'backfillNone': ?backfillNone,
      'customerManagedEncryptionKey': ?customerManagedEncryptionKey,
      'destinationConfig':
          pulumi.Input.mapInputValue<
            DestinationConfigDatastreamV1alpha1,
            Map<String, dynamic>
          >(destinationConfig, (value) => value.toMap()),
      'displayName': displayName,
      'force': ?force,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
      'sourceConfig':
          pulumi.Input.mapInputValue<
            SourceConfigDatastreamV1alpha1,
            Map<String, dynamic>
          >(sourceConfig, (value) => value.toMap()),
      'state':
          ?pulumi.Input.mapOptionalInputValue<
            StreamStateDatastreamV1alpha1,
            String
          >(state, (value) => value.value),
      'streamId': streamId,
    };
  }

  factory StreamDatastreamV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return StreamDatastreamV1alpha1Args(
      backfillAll: map['backfillAll'] == null
          ? null
          : BackfillAllStrategyDatastreamV1alpha1.fromMap(
              (map['backfillAll'] as Map).cast<String, dynamic>(),
            ),
      backfillNone: map['backfillNone'] == null
          ? null
          : (map['backfillNone'] as Map).cast<String, dynamic>(),
      customerManagedEncryptionKey: map['customerManagedEncryptionKey'] == null
          ? null
          : map['customerManagedEncryptionKey'] as String,
      destinationConfig: DestinationConfigDatastreamV1alpha1.fromMap(
        (map['destinationConfig'] as Map).cast<String, dynamic>(),
      ),
      displayName: map['displayName'] as String,
      force: map['force'] == null ? null : map['force'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      sourceConfig: SourceConfigDatastreamV1alpha1.fromMap(
        (map['sourceConfig'] as Map).cast<String, dynamic>(),
      ),
      state: map['state'] == null
          ? null
          : StreamStateDatastreamV1alpha1.fromValue(map['state'] as String),
      streamId: map['streamId'] as String,
    );
  }
}
