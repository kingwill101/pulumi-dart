// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir {
  /// The medium to store the volume.
  final String medium;

  /// The maximum size of the volume. By default, there's no maximum size defined.
  final String sizeLimit;

  GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir({
    required this.medium,
    required this.sizeLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['medium'] = medium;
    map['sizeLimit'] = sizeLimit;
    return map;
  }

  factory GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyVolumeEmptyDir(
      medium: map['medium'] as String,
      sizeLimit: map['sizeLimit'] as String,
    );
  }
}
