// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'backfill_all_strategy_response2.dart';
import 'destination_config_response3.dart';
import 'error_response2.dart';
import 'source_config_response3.dart';

/// Result data returned by getStream.
class GetStreamResult2 {
  /// Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.
  final BackfillAllStrategyResponse2 backfillAll;

  /// Do not automatically backfill any objects.
  final Map<String, dynamic> backfillNone;

  /// The creation time of the stream.
  final String createTime;

  /// Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  final String customerManagedEncryptionKey;

  /// Destination connection profile configuration.
  final DestinationConfigResponse3 destinationConfig;

  /// Display name.
  final String displayName;

  /// Errors on the Stream.
  final List<ErrorResponse2> errors;

  /// Labels.
  final Map<String, String> labels;

  /// The stream's name.
  final String name;

  /// Source connection profile configuration.
  final SourceConfigResponse3 sourceConfig;

  /// The state of the stream.
  final String state;

  /// The last update time of the stream.
  final String updateTime;

  GetStreamResult2({
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
    final map = <String, dynamic>{};
    map['backfillAll'] = backfillAll.toMap();
    map['backfillNone'] = backfillNone;
    map['createTime'] = createTime;
    map['customerManagedEncryptionKey'] = customerManagedEncryptionKey;
    map['destinationConfig'] = destinationConfig.toMap();
    map['displayName'] = displayName;
    map['errors'] = Input.encodeList<ErrorResponse2, Map<String, dynamic>>(
        errors, (value) => value.toMap());
    map['labels'] = labels;
    map['name'] = name;
    map['sourceConfig'] = sourceConfig.toMap();
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetStreamResult2.fromMap(Map<String, dynamic> map) {
    return GetStreamResult2(
      backfillAll: BackfillAllStrategyResponse2.fromMap(
          (map['backfillAll'] as Map).cast<String, dynamic>()),
      backfillNone: (map['backfillNone'] as Map).cast<String, dynamic>(),
      createTime: map['createTime'] as String,
      customerManagedEncryptionKey:
          map['customerManagedEncryptionKey'] as String,
      destinationConfig: DestinationConfigResponse3.fromMap(
          (map['destinationConfig'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      errors: Input.decodeList<ErrorResponse2>(
          map['errors'],
          (value) =>
              ErrorResponse2.fromMap((value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      sourceConfig: SourceConfigResponse3.fromMap(
          (map['sourceConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
