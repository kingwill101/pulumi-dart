// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_destination_configuration.dart';

/// The type for a storage destination.
class StreamStorageDestination {
  /// The storage destination configuration.
  final pulumi.Input<StorageDestinationConfiguration> configuration;
  /// The set of supported stream destinations for an asset.
  /// Expected value is 'Storage'.
  final pulumi.Input<String> target;

  /// Creates a new [StreamStorageDestination].
  /// [configuration] The storage destination configuration.
  /// [target] The set of supported stream destinations for an asset.
  const StreamStorageDestination({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<StorageDestinationConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'target': target,
    };
  }

  factory StreamStorageDestination.fromMap(Map<String, dynamic> map) {
    return StreamStorageDestination(
      configuration: pulumi.Input.fromValue(StorageDestinationConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}

