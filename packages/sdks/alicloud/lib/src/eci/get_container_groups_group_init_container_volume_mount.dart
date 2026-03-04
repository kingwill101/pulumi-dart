// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContainerGroupsGroupInitContainerVolumeMount {
  /// The directory of the mounted volume. Data under this directory will be overwritten by the data in the volume.
  final pulumi.Input<String> mountPath;

  /// The name of the volume. The name is the same as the volume you selected when you purchased the container.
  final pulumi.Input<String> name;

  /// Default value: `false`.
  final pulumi.Input<bool> readOnly;

  /// Creates a new [GetContainerGroupsGroupInitContainerVolumeMount].
  /// [mountPath] The directory of the mounted volume. Data under this directory will be overwritten by the data in the volume.
  /// [name] The name of the volume. The name is the same as the volume you selected when you purchased the container.
  /// [readOnly] Default value: `false`.
  GetContainerGroupsGroupInitContainerVolumeMount({
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

  factory GetContainerGroupsGroupInitContainerVolumeMount.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetContainerGroupsGroupInitContainerVolumeMount(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
    );
  }
}
