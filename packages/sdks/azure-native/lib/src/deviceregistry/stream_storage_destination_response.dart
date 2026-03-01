// ignore_for_file: unused_element, unnecessary_cast

import 'storage_destination_configuration_response.dart';

/// The type for a storage destination.
class StreamStorageDestinationResponse {
  /// The storage destination configuration.
  final StorageDestinationConfigurationResponse configuration;
  /// The set of supported stream destinations for an asset.
  /// Expected value is 'Storage'.
  final String target;

  /// Creates a new [StreamStorageDestinationResponse].
  /// [configuration] The storage destination configuration.
  /// [target] The set of supported stream destinations for an asset.
  StreamStorageDestinationResponse({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': configuration.toMap(),
      'target': target,
    };
  }

  factory StreamStorageDestinationResponse.fromMap(Map<String, dynamic> map) {
    return StreamStorageDestinationResponse(
      configuration: StorageDestinationConfigurationResponse.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      target: map['target'] as String,
    );
  }
}

