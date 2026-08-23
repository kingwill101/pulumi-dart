// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir {
  /// Medium to store the volume.
  final pulumi.Input<String> medium;
  /// Maximum size of the volume. By default, there's no maximum size defined.
  final pulumi.Input<String> sizeLimit;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir].
  /// [medium] Medium to store the volume.
  /// [sizeLimit] Maximum size of the volume. By default, there's no maximum size defined.
  const GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir({
    required this.medium,
    required this.sizeLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'medium': medium,
      'sizeLimit': sizeLimit,
    };
  }

  factory GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir(
      medium: pulumi.Input.fromValue(map['medium'] as String),
      sizeLimit: pulumi.Input.fromValue(map['sizeLimit'] as String),
    );
  }
}
