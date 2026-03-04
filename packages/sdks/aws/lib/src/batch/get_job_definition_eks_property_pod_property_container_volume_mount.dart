// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount {
  /// The path on the container where the volume is mounted.
  final pulumi.Input<String> mountPath;

  /// The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final pulumi.Input<String> name;

  /// If this value is true, the container has read-only access to the volume.
  final pulumi.Input<bool> readOnly;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount].
  /// [mountPath] The path on the container where the volume is mounted.
  /// [name] The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  /// [readOnly] If this value is true, the container has read-only access to the volume.
  GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount({
    required this.mountPath,
    required this.name,
    required this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'name': name,
      'readOnly': readOnly,
    };
  }

  factory GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
    );
  }
}
