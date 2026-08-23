// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount {
  /// Path on the container where the volume is mounted.
  final pulumi.Input<String> mountPath;
  /// Name the volume mount. This must match the name of one of the volumes in the pod.
  final pulumi.Input<String> name;
  /// Whether the container has read-only access to the volume. The default value is `false`.
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount].
  /// [mountPath] Path on the container where the volume is mounted.
  /// [name] Name the volume mount. This must match the name of one of the volumes in the pod.
  /// [readOnly] Whether the container has read-only access to the volume. The default value is `false`.
  const JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount({
    required this.mountPath,
    required this.name,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'name': name,
      'readOnly': ?readOnly,
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
