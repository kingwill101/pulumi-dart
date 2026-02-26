// ignore_for_file: unused_element, unnecessary_cast

import '../stream_destination_config_bigquery_destination_config/stream_destination_config_bigquery_destination_config.dart';
import '../stream_destination_config_gcs_destination_config/stream_destination_config_gcs_destination_config.dart';

class StreamDestinationConfig {
  /// A configuration for how data should be loaded to Google BigQuery.
  /// Structure is documented below.
  final StreamDestinationConfigBigqueryDestinationConfig?
      bigqueryDestinationConfig;

  /// Destination connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name}
  final String destinationConnectionProfile;

  /// A configuration for how data should be loaded to Cloud Storage.
  /// Structure is documented below.
  final StreamDestinationConfigGcsDestinationConfig? gcsDestinationConfig;

  StreamDestinationConfig({
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

  factory StreamDestinationConfig.fromMap(Map<String, dynamic> map) {
    return StreamDestinationConfig(
      bigqueryDestinationConfig: map['bigqueryDestinationConfig'] == null
          ? null
          : StreamDestinationConfigBigqueryDestinationConfig.fromMap(
              (map['bigqueryDestinationConfig'] as Map)
                  .cast<String, dynamic>()),
      destinationConnectionProfile:
          map['destinationConnectionProfile'] as String,
      gcsDestinationConfig: map['gcsDestinationConfig'] == null
          ? null
          : StreamDestinationConfigGcsDestinationConfig.fromMap(
              (map['gcsDestinationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
