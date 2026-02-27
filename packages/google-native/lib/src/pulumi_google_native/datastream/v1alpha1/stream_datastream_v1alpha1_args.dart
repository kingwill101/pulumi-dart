// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backfill_all_strategy_datastream_v1alpha1.dart';
import 'destination_config_datastream_v1alpha1.dart';
import 'source_config_datastream_v1alpha1.dart';
import 'stream_state_datastream_v1alpha1.dart';

/// The set of arguments for Stream.
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

  StreamDatastreamV1alpha1Args({
    this.backfillAll,
    this.backfillNone,
    this.customerManagedEncryptionKey,
    required this.destinationConfig,
    required this.displayName,
    this.force,
    this.labels,
    this.location,
    this.project,
    this.requestId,
    required this.sourceConfig,
    this.state,
    required this.streamId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backfillAllValue = backfillAll;
    if (backfillAllValue != null) {
      map['backfillAll'] = pulumi.Input.mapOptionalInputValue<
          BackfillAllStrategyDatastreamV1alpha1,
          Map<String, dynamic>>(backfillAllValue, (value) => value.toMap());
    }
    final backfillNoneValue = backfillNone;
    if (backfillNoneValue != null) {
      map['backfillNone'] = backfillNoneValue;
    }
    final customerManagedEncryptionKeyValue = customerManagedEncryptionKey;
    if (customerManagedEncryptionKeyValue != null) {
      map['customerManagedEncryptionKey'] = customerManagedEncryptionKeyValue;
    }
    map['destinationConfig'] = pulumi.Input.mapInputValue<
        DestinationConfigDatastreamV1alpha1,
        Map<String, dynamic>>(destinationConfig, (value) => value.toMap());
    map['displayName'] = displayName;
    final forceValue = force;
    if (forceValue != null) {
      map['force'] = forceValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['sourceConfig'] = pulumi.Input.mapInputValue<
        SourceConfigDatastreamV1alpha1,
        Map<String, dynamic>>(sourceConfig, (value) => value.toMap());
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = pulumi.Input.mapOptionalInputValue<
          StreamStateDatastreamV1alpha1,
          String>(stateValue, (value) => value.value);
    }
    map['streamId'] = streamId;
    return map;
  }

  factory StreamDatastreamV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return StreamDatastreamV1alpha1Args(
      backfillAll:
          pulumi.Input.asOptionalInput<BackfillAllStrategyDatastreamV1alpha1>(
              map['backfillAll']),
      backfillNone: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['backfillNone']),
      customerManagedEncryptionKey: pulumi.Input.asOptionalInput<String>(
          map['customerManagedEncryptionKey']),
      destinationConfig:
          pulumi.Input.asInput<DestinationConfigDatastreamV1alpha1>(
              map['destinationConfig']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      force: pulumi.Input.asOptionalInput<bool>(map['force']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      sourceConfig: pulumi.Input.asInput<SourceConfigDatastreamV1alpha1>(
          map['sourceConfig']),
      state: pulumi.Input.asOptionalInput<StreamStateDatastreamV1alpha1>(
          map['state']),
      streamId: pulumi.Input.asInput<String>(map['streamId']),
    );
  }
}
