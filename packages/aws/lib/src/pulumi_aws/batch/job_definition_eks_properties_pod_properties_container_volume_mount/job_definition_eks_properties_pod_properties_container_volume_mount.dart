// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionEksPropertiesPodPropertiesContainerVolumeMount {
  final String mountPath;

  /// Name of the job definition.
  final String name;
  final bool? readOnly;

  JobDefinitionEksPropertiesPodPropertiesContainerVolumeMount({
    required this.mountPath,
    required this.name,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mountPath'] = mountPath;
    map['name'] = name;
    final readOnlyValue = readOnly;
    if (readOnlyValue != null) {
      map['readOnly'] = readOnlyValue;
    }
    return map;
  }

  factory JobDefinitionEksPropertiesPodPropertiesContainerVolumeMount.fromMap(
      Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesContainerVolumeMount(
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}
