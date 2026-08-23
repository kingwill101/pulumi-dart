// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Persistence options to all pipelines in the instance.
class PersistenceConfigurations {
  /// The name of the mounted persistent volume.
  final pulumi.Input<String> persistentVolumeName;

  /// Creates a new [PersistenceConfigurations].
  /// [persistentVolumeName] The name of the mounted persistent volume.
  const PersistenceConfigurations({
    required this.persistentVolumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistentVolumeName': persistentVolumeName,
    };
  }

  factory PersistenceConfigurations.fromMap(Map<String, dynamic> map) {
    return PersistenceConfigurations(
      persistentVolumeName: pulumi.Input.fromValue(map['persistentVolumeName'] as String),
    );
  }
}
