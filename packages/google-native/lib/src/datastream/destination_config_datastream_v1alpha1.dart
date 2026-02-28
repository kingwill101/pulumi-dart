// ignore_for_file: unused_element, unnecessary_cast

import 'gcs_destination_config_datastream_v1alpha1.dart';

/// The configuration of the stream destination.
class DestinationConfigDatastreamV1alpha1 {
  /// Destination connection profile identifier.
  final String destinationConnectionProfileName;

  /// GCS destination configuration.
  final GcsDestinationConfigDatastreamV1alpha1? gcsDestinationConfig;

  /// Creates a new [DestinationConfigDatastreamV1alpha1].
  /// [destinationConnectionProfileName] Destination connection profile identifier.
  /// [gcsDestinationConfig] GCS destination configuration.
  DestinationConfigDatastreamV1alpha1({
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

  factory DestinationConfigDatastreamV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return DestinationConfigDatastreamV1alpha1(
      destinationConnectionProfileName:
          map['destinationConnectionProfileName'] as String,
      gcsDestinationConfig: map['gcsDestinationConfig'] == null
          ? null
          : GcsDestinationConfigDatastreamV1alpha1.fromMap(
              (map['gcsDestinationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
