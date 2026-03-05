// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_destination_configuration_response.dart';

/// The type for a storage destination.
class StreamStorageDestinationResponse {
  /// The storage destination configuration.
  final pulumi.Input<StorageDestinationConfigurationResponse> configuration;
  /// The set of supported stream destinations for an asset.
  /// Expected value is 'Storage'.
  final pulumi.Input<String> target;

  /// Creates a new [StreamStorageDestinationResponse].
  /// [configuration] The storage destination configuration.
  /// [target] The set of supported stream destinations for an asset.
  StreamStorageDestinationResponse({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<StorageDestinationConfigurationResponse, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'target': target,
    };
  }

  factory StreamStorageDestinationResponse.fromMap(Map<String, dynamic> map) {
    return StreamStorageDestinationResponse(
      configuration: pulumi.Input.fromValue(StorageDestinationConfigurationResponse.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}

