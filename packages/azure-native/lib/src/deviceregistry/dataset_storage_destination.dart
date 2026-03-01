// ignore_for_file: unused_element, unnecessary_cast

import 'storage_destination_configuration.dart';

/// The type for a storage destination.
class DatasetStorageDestination {
  /// The storage destination configuration.
  final StorageDestinationConfiguration configuration;
  /// The set of supported dataset destinations for an asset.
  /// Expected value is 'Storage'.
  final String target;

  /// Creates a new [DatasetStorageDestination].
  /// [configuration] The storage destination configuration.
  /// [target] The set of supported dataset destinations for an asset.
  DatasetStorageDestination({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': configuration.toMap(),
      'target': target,
    };
  }

  factory DatasetStorageDestination.fromMap(Map<String, dynamic> map) {
    return DatasetStorageDestination(
      configuration: StorageDestinationConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      target: map['target'] as String,
    );
  }
}

