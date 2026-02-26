// ignore_for_file: unused_element, unnecessary_cast

import 'gcs_destination_config_response2.dart';

/// The configuration of the stream destination.
class DestinationConfigResponse3 {
  /// Destination connection profile identifier.
  final String destinationConnectionProfileName;

  /// GCS destination configuration.
  final GcsDestinationConfigResponse2 gcsDestinationConfig;

  DestinationConfigResponse3({
    required this.destinationConnectionProfileName,
    required this.gcsDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationConnectionProfileName'] = destinationConnectionProfileName;
    map['gcsDestinationConfig'] = gcsDestinationConfig.toMap();
    return map;
  }

  factory DestinationConfigResponse3.fromMap(Map<String, dynamic> map) {
    return DestinationConfigResponse3(
      destinationConnectionProfileName:
          map['destinationConnectionProfileName'] as String,
      gcsDestinationConfig: GcsDestinationConfigResponse2.fromMap(
          (map['gcsDestinationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
