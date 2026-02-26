// ignore_for_file: unused_element, unnecessary_cast

import 'gcs_destination_config2.dart';

/// The configuration of the stream destination.
class DestinationConfig3 {
  /// Destination connection profile identifier.
  final String destinationConnectionProfileName;

  /// GCS destination configuration.
  final GcsDestinationConfig2? gcsDestinationConfig;

  DestinationConfig3({
    required this.destinationConnectionProfileName,
    this.gcsDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationConnectionProfileName'] = destinationConnectionProfileName;
    final gcsDestinationConfigValue = gcsDestinationConfig;
    if (gcsDestinationConfigValue != null) {
      map['gcsDestinationConfig'] = gcsDestinationConfigValue.toMap();
    }
    return map;
  }

  factory DestinationConfig3.fromMap(Map<String, dynamic> map) {
    return DestinationConfig3(
      destinationConnectionProfileName:
          map['destinationConnectionProfileName'] as String,
      gcsDestinationConfig: map['gcsDestinationConfig'] == null
          ? null
          : GcsDestinationConfig2.fromMap(
              (map['gcsDestinationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
