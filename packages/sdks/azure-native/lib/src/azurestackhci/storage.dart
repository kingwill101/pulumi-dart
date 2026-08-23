// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Storage config of AzureStackHCI Cluster.
class Storage {
  /// By default, this mode is set to Express and your storage is configured as per best practices based on the number of nodes in the cluster. Allowed values are 'Express','InfraOnly', 'KeepStorage'
  final pulumi.Input<String>? configurationMode;

  /// Creates a new [Storage].
  /// [configurationMode] By default, this mode is set to Express and your storage is configured as per best practices based on the number of nodes in the cluster. Allowed values are 'Express','InfraOnly', 'KeepStorage'
  const Storage({
    this.configurationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationMode': ?configurationMode,
    };
  }

  factory Storage.fromMap(Map<String, dynamic> map) {
    return Storage(
      configurationMode: (() { final guardedValue = map['configurationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
