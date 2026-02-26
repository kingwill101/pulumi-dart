// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'backfill_all_strategy2.dart';
import 'destination_config3.dart';
import 'source_config3.dart';
import 'stream_state2.dart';

/// The set of arguments for Stream.
class StreamArgs2 {
  /// Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  final Input<BackfillAllStrategy2>? backfillAll;

  /// Do not automatically backfill any objects.
  final Input<Map<String, dynamic>>? backfillNone;

  /// Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  final Input<String>? customerManagedEncryptionKey;

  /// Destination connection profile configuration.
  final Input<DestinationConfig3> destinationConfig;

  /// Display name.
  final Input<String> displayName;

  /// Optional. Create the stream without validating it.
  final Input<bool>? force;

  /// Labels.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Source connection profile configuration.
  final Input<SourceConfig3> sourceConfig;

  /// The state of the stream.
  final Input<StreamState2>? state;

  /// Required. The stream identifier.
  final Input<String> streamId;

  StreamArgs2({
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
      map['backfillAll'] = Input.mapOptionalInputValue<BackfillAllStrategy2,
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
    map['destinationConfig'] =
        Input.mapInputValue<DestinationConfig3, Map<String, dynamic>>(
            destinationConfig, (value) => value.toMap());
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
    map['sourceConfig'] =
        Input.mapInputValue<SourceConfig3, Map<String, dynamic>>(
            sourceConfig, (value) => value.toMap());
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = Input.mapOptionalInputValue<StreamState2, String>(
          stateValue, (value) => value.value);
    }
    map['streamId'] = streamId;
    return map;
  }

  factory StreamArgs2.fromMap(Map<String, dynamic> map) {
    return StreamArgs2(
      backfillAll:
          Input.asOptionalInput<BackfillAllStrategy2>(map['backfillAll']),
      backfillNone:
          Input.asOptionalInput<Map<String, dynamic>>(map['backfillNone']),
      customerManagedEncryptionKey:
          Input.asOptionalInput<String>(map['customerManagedEncryptionKey']),
      destinationConfig:
          Input.asInput<DestinationConfig3>(map['destinationConfig']),
      displayName: Input.asInput<String>(map['displayName']),
      force: Input.asOptionalInput<bool>(map['force']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      sourceConfig: Input.asInput<SourceConfig3>(map['sourceConfig']),
      state: Input.asOptionalInput<StreamState2>(map['state']),
      streamId: Input.asInput<String>(map['streamId']),
    );
  }
}
