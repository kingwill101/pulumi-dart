// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_destination_configuration.dart';

/// The type for a storage destination.
class DatasetStorageDestination {
  /// The storage destination configuration.
  final pulumi.Input<StorageDestinationConfiguration> configuration;
  /// The set of supported dataset destinations for an asset.
  /// Expected value is 'Storage'.
  final pulumi.Input<String> target;

  /// Creates a new [DatasetStorageDestination].
  /// [configuration] The storage destination configuration.
  /// [target] The set of supported dataset destinations for an asset.
  const DatasetStorageDestination({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<StorageDestinationConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'target': target,
    };
  }

  factory DatasetStorageDestination.fromMap(Map<String, dynamic> map) {
    return DatasetStorageDestination(
      configuration: pulumi.Input.fromValue(StorageDestinationConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}

