// ignore_for_file: unused_element, unnecessary_cast

import 'big_query_destination_config_response.dart';
import 'gcs_destination_config_response.dart';

/// The configuration of the stream destination.
class DestinationConfigResponse2 {
  /// BigQuery destination configuration.
  final BigQueryDestinationConfigResponse bigqueryDestinationConfig;

  /// Destination connection profile resource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  final String destinationConnectionProfile;

  /// A configuration for how data should be loaded to Cloud Storage.
  final GcsDestinationConfigResponse gcsDestinationConfig;

  DestinationConfigResponse2({
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

  factory DestinationConfigResponse2.fromMap(Map<String, dynamic> map) {
    return DestinationConfigResponse2(
      bigqueryDestinationConfig: BigQueryDestinationConfigResponse.fromMap(
          (map['bigqueryDestinationConfig'] as Map).cast<String, dynamic>()),
      destinationConnectionProfile:
          map['destinationConnectionProfile'] as String,
      gcsDestinationConfig: GcsDestinationConfigResponse.fromMap(
          (map['gcsDestinationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
