// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount {
  final pulumi.Input<String> mountPath;
  /// Name of the job definition.
  final pulumi.Input<String> name;
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount].
  /// [mountPath] Required.
  /// [name] Name of the job definition.
  /// [readOnly] Optional.
  JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount({
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
      mountPath: (map['mountPath'] as String).input(),
      name: (map['name'] as String).input(),
      readOnly: map['readOnly'] == null ? null : ((map['readOnly'] as bool).input()).input(),
    );
  }
}

