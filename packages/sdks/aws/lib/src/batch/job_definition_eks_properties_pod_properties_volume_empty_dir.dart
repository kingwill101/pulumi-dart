// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir {
  /// Medium to store the volume. The default value is an empty string, which uses the storage of the node.
  final pulumi.Input<String>? medium;
  /// Maximum size of the volume. By default, there's no maximum size defined.
  final pulumi.Input<String> sizeLimit;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir].
  /// [medium] Medium to store the volume. The default value is an empty string, which uses the storage of the node.
  /// [sizeLimit] Maximum size of the volume. By default, there's no maximum size defined.
  const JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir({
    this.medium,
    required this.sizeLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'medium': ?medium,
      'sizeLimit': sizeLimit,
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir(
      medium: (() { final guardedValue = map['medium']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeLimit: pulumi.Input.fromValue(map['sizeLimit'] as String),
    );
  }
}
