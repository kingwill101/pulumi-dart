// ignore_for_file: unused_element, unnecessary_cast

import 'gcs_destination_config_response_datastream_v1alpha1.dart';

/// The configuration of the stream destination.
class DestinationConfigResponseDatastreamV1alpha1 {
  /// Destination connection profile identifier.
  final String destinationConnectionProfileName;
  /// GCS destination configuration.
  final GcsDestinationConfigResponseDatastreamV1alpha1 gcsDestinationConfig;

  /// Creates a new [DestinationConfigResponseDatastreamV1alpha1].
  /// [destinationConnectionProfileName] Destination connection profile identifier.
  /// [gcsDestinationConfig] GCS destination configuration.
  DestinationConfigResponseDatastreamV1alpha1({
    required this.destinationConnectionProfileName,
    required this.gcsDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationConnectionProfileName': destinationConnectionProfileName,
      'gcsDestinationConfig': gcsDestinationConfig.toMap(),
    };
  }

  factory DestinationConfigResponseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return DestinationConfigResponseDatastreamV1alpha1(
      destinationConnectionProfileName: map['destinationConnectionProfileName'] as String,
      gcsDestinationConfig: GcsDestinationConfigResponseDatastreamV1alpha1.fromMap((map['gcsDestinationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

