// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir {
  /// Medium to store the volume. The default value is an empty string, which uses the storage of the node.
  final String? medium;

  /// Maximum size of the volume. By default, there's no maximum size defined.
  final String sizeLimit;

  JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir({
    this.medium,
    required this.sizeLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mediumValue = medium;
    if (mediumValue != null) {
      map['medium'] = mediumValue;
    }
    map['sizeLimit'] = sizeLimit;
    return map;
  }

  factory JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir.fromMap(
      Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesVolumeEmptyDir(
      medium: map['medium'] == null ? null : map['medium'] as String,
      sizeLimit: map['sizeLimit'] as String,
    );
  }
}
