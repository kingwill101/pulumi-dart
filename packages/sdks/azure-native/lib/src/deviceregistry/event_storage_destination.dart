// ignore_for_file: unused_element, unnecessary_cast

import 'storage_destination_configuration.dart';

/// The type for a storage destination.
class EventStorageDestination {
  /// The storage destination configuration.
  final StorageDestinationConfiguration configuration;
  /// The set of supported event destinations for an asset.
  /// Expected value is 'Storage'.
  final String target;

  /// Creates a new [EventStorageDestination].
  /// [configuration] The storage destination configuration.
  /// [target] The set of supported event destinations for an asset.
  EventStorageDestination({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': configuration.toMap(),
      'target': target,
    };
  }

  factory EventStorageDestination.fromMap(Map<String, dynamic> map) {
    return EventStorageDestination(
      configuration: StorageDestinationConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      target: map['target'] as String,
    );
  }
}

