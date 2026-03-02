// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_destination_configuration_response.dart';

/// The type for a storage destination.
class EventStorageDestinationResponse {
  /// The storage destination configuration.
  final pulumi.Input<StorageDestinationConfigurationResponse> configuration;
  /// The set of supported event destinations for an asset.
  /// Expected value is 'Storage'.
  final pulumi.Input<String> target;

  /// Creates a new [EventStorageDestinationResponse].
  /// [configuration] The storage destination configuration.
  /// [target] The set of supported event destinations for an asset.
  EventStorageDestinationResponse({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<StorageDestinationConfigurationResponse, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'target': target,
    };
  }

  factory EventStorageDestinationResponse.fromMap(Map<String, dynamic> map) {
    return EventStorageDestinationResponse(
      configuration: (StorageDestinationConfigurationResponse.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      target: (map['target'] as String).input(),
    );
  }
}

