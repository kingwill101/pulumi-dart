// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionEksPropertiesPodPropertiesContainerVolumeMount {
  final pulumi.Input<String> mountPath;
  /// Name of the job definition.
  final pulumi.Input<String> name;
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesContainerVolumeMount].
  /// [mountPath] Required.
  /// [name] Name of the job definition.
  /// [readOnly] Optional.
  JobDefinitionEksPropertiesPodPropertiesContainerVolumeMount({
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

  factory JobDefinitionEksPropertiesPodPropertiesContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesContainerVolumeMount(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

