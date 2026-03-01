// ignore_for_file: unused_element, unnecessary_cast


class GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir {
  /// The medium to store the volume.
  final String medium;
  /// The maximum size of the volume. By default, there's no maximum size defined.
  final String sizeLimit;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir].
  /// [medium] The medium to store the volume.
  /// [sizeLimit] The maximum size of the volume. By default, there's no maximum size defined.
  GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir({
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
      medium: map['medium'] as String,
      sizeLimit: map['sizeLimit'] as String,
    );
  }
}

