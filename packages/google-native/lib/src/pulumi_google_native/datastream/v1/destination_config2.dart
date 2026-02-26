// ignore_for_file: unused_element, unnecessary_cast

import 'big_query_destination_config.dart';
import 'gcs_destination_config.dart';

/// The configuration of the stream destination.
class DestinationConfig2 {
  /// BigQuery destination configuration.
  final BigQueryDestinationConfig? bigqueryDestinationConfig;

  /// Destination connection profile resource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  final String destinationConnectionProfile;

  /// A configuration for how data should be loaded to Cloud Storage.
  final GcsDestinationConfig? gcsDestinationConfig;

  DestinationConfig2({
    this.bigqueryDestinationConfig,
    required this.destinationConnectionProfile,
    this.gcsDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryDestinationConfigValue = bigqueryDestinationConfig;
    if (bigqueryDestinationConfigValue != null) {
      map['bigqueryDestinationConfig'] = bigqueryDestinationConfigValue.toMap();
    }
    map['destinationConnectionProfile'] = destinationConnectionProfile;
    final gcsDestinationConfigValue = gcsDestinationConfig;
    if (gcsDestinationConfigValue != null) {
      map['gcsDestinationConfig'] = gcsDestinationConfigValue.toMap();
    }
    return map;
  }

  factory DestinationConfig2.fromMap(Map<String, dynamic> map) {
    return DestinationConfig2(
      bigqueryDestinationConfig: map['bigqueryDestinationConfig'] == null
          ? null
          : BigQueryDestinationConfig.fromMap(
              (map['bigqueryDestinationConfig'] as Map)
                  .cast<String, dynamic>()),
      destinationConnectionProfile:
          map['destinationConnectionProfile'] as String,
      gcsDestinationConfig: map['gcsDestinationConfig'] == null
          ? null
          : GcsDestinationConfig.fromMap(
              (map['gcsDestinationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
