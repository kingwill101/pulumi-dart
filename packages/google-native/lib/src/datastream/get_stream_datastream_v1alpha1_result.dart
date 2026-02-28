// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backfill_all_strategy_response_datastream_v1alpha1.dart';
import 'destination_config_response_datastream_v1alpha1.dart';
import 'error_response_datastream_v1alpha1.dart';
import 'source_config_response_datastream_v1alpha1.dart';

/// Result data returned by getStream.
class GetStreamDatastreamV1alpha1Result {
  /// Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  final BackfillAllStrategyResponseDatastreamV1alpha1 backfillAll;
  /// Do not automatically backfill any objects.
  final Map<String, dynamic> backfillNone;
  /// The creation time of the stream.
  final String createTime;
  /// Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  final String customerManagedEncryptionKey;
  /// Destination connection profile configuration.
  final DestinationConfigResponseDatastreamV1alpha1 destinationConfig;
  /// Display name.
  final String displayName;
  /// Errors on the Stream.
  final List<ErrorResponseDatastreamV1alpha1> errors;
  /// Labels.
  final Map<String, String> labels;
  /// The stream's name.
  final String name;
  /// Source connection profile configuration.
  final SourceConfigResponseDatastreamV1alpha1 sourceConfig;
  /// The state of the stream.
  final String state;
  /// The last update time of the stream.
  final String updateTime;

  /// Creates a new [GetStreamDatastreamV1alpha1Result].
  /// [backfillAll] Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  /// [backfillNone] Do not automatically backfill any objects.
  /// [createTime] The creation time of the stream.
  /// [customerManagedEncryptionKey] Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  /// [destinationConfig] Destination connection profile configuration.
  /// [displayName] Display name.
  /// [errors] Errors on the Stream.
  /// [labels] Labels.
  /// [name] The stream's name.
  /// [sourceConfig] Source connection profile configuration.
  /// [state] The state of the stream.
  /// [updateTime] The last update time of the stream.
  GetStreamDatastreamV1alpha1Result({
    required this.backfillAll,
    required this.backfillNone,
    required this.createTime,
    required this.customerManagedEncryptionKey,
    required this.destinationConfig,
    required this.displayName,
    required this.errors,
    required this.labels,
    required this.name,
    required this.sourceConfig,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backfillAll': backfillAll.toMap(),
      'backfillNone': backfillNone,
      'createTime': createTime,
      'customerManagedEncryptionKey': customerManagedEncryptionKey,
      'destinationConfig': destinationConfig.toMap(),
      'displayName': displayName,
      'errors': pulumi.Input.encodeList<ErrorResponseDatastreamV1alpha1, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'labels': labels,
      'name': name,
      'sourceConfig': sourceConfig.toMap(),
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetStreamDatastreamV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetStreamDatastreamV1alpha1Result(
      backfillAll: BackfillAllStrategyResponseDatastreamV1alpha1.fromMap((map['backfillAll'] as Map).cast<String, dynamic>()),
      backfillNone: (map['backfillNone'] as Map).cast<String, dynamic>(),
      createTime: map['createTime'] as String,
      customerManagedEncryptionKey: map['customerManagedEncryptionKey'] as String,
      destinationConfig: DestinationConfigResponseDatastreamV1alpha1.fromMap((map['destinationConfig'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      errors: pulumi.Input.decodeList<ErrorResponseDatastreamV1alpha1>(map['errors'], (value) => ErrorResponseDatastreamV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      sourceConfig: SourceConfigResponseDatastreamV1alpha1.fromMap((map['sourceConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

