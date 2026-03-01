// ignore_for_file: unused_element, unnecessary_cast

import 'storage_destination_configuration.dart';

/// The type for a storage destination.
class StreamStorageDestination {
  /// The storage destination configuration.
  final StorageDestinationConfiguration configuration;
  /// The set of supported stream destinations for an asset.
  /// Expected value is 'Storage'.
  final String target;

  /// Creates a new [StreamStorageDestination].
  /// [configuration] The storage destination configuration.
  /// [target] The set of supported stream destinations for an asset.
  StreamStorageDestination({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': configuration.toMap(),
      'target': target,
    };
  }

  factory StreamStorageDestination.fromMap(Map<String, dynamic> map) {
    return StreamStorageDestination(
      configuration: StorageDestinationConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      target: map['target'] as String,
    );
  }
}

