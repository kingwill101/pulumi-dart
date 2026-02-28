// ignore_for_file: unused_element, unnecessary_cast

import 'big_query_destination_config_response.dart';
import 'gcs_destination_config_response.dart';

/// The configuration of the stream destination.
class DestinationConfigResponse {
  /// BigQuery destination configuration.
  final BigQueryDestinationConfigResponse bigqueryDestinationConfig;

  /// Destination connection profile resource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  final String destinationConnectionProfile;

  /// A configuration for how data should be loaded to Cloud Storage.
  final GcsDestinationConfigResponse gcsDestinationConfig;

  /// Creates a new [DestinationConfigResponse].
  /// [bigqueryDestinationConfig] BigQuery destination configuration.
  /// [destinationConnectionProfile] Destination connection profile resource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  /// [gcsDestinationConfig] A configuration for how data should be loaded to Cloud Storage.
  DestinationConfigResponse({
    required this.bigqueryDestinationConfig,
    required this.destinationConnectionProfile,
    required this.gcsDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryDestinationConfig'] = bigqueryDestinationConfig.toMap();
    map['destinationConnectionProfile'] = destinationConnectionProfile;
    map['gcsDestinationConfig'] = gcsDestinationConfig.toMap();
    return map;
  }

  factory DestinationConfigResponse.fromMap(Map<String, dynamic> map) {
    return DestinationConfigResponse(
      bigqueryDestinationConfig: BigQueryDestinationConfigResponse.fromMap(
          (map['bigqueryDestinationConfig'] as Map).cast<String, dynamic>()),
      destinationConnectionProfile:
          map['destinationConnectionProfile'] as String,
      gcsDestinationConfig: GcsDestinationConfigResponse.fromMap(
          (map['gcsDestinationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
