// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Persistence options to all pipelines in the instance.
class PersistenceConfigurationsResponse {
  /// The name of the mounted persistent volume.
  final pulumi.Input<String> persistentVolumeName;

  /// Creates a new [PersistenceConfigurationsResponse].
  /// [persistentVolumeName] The name of the mounted persistent volume.
  const PersistenceConfigurationsResponse({
    required this.persistentVolumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistentVolumeName': persistentVolumeName,
    };
  }

  factory PersistenceConfigurationsResponse.fromMap(Map<String, dynamic> map) {
    return PersistenceConfigurationsResponse(
      persistentVolumeName: pulumi.Input.fromValue(map['persistentVolumeName'] as String),
    );
  }
}
