// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_destination_configuration_response.dart';

/// The type for a storage destination.
class DatasetStorageDestinationResponse {
  /// The storage destination configuration.
  final pulumi.Input<StorageDestinationConfigurationResponse> configuration;

  /// The set of supported dataset destinations for an asset.
  /// Expected value is 'Storage'.
  final pulumi.Input<String> target;

  /// Creates a new [DatasetStorageDestinationResponse].
  /// [configuration] The storage destination configuration.
  /// [target] The set of supported dataset destinations for an asset.
  DatasetStorageDestinationResponse({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration':
          pulumi.Input.mapInputValue<
            StorageDestinationConfigurationResponse,
            Map<String, dynamic>
          >(configuration, (value) => value.toMap()),
      'target': target,
    };
  }

  factory DatasetStorageDestinationResponse.fromMap(Map<String, dynamic> map) {
    return DatasetStorageDestinationResponse(
      configuration: pulumi.Input.fromValue(
        StorageDestinationConfigurationResponse.fromMap(
          (map['configuration']! as Map).cast<String, dynamic>(),
        ),
      ),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
