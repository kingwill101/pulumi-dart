// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionEksPropertiesPodPropertiesImagePullSecret {
  /// Unique identifier.
  final String name;

  JobDefinitionEksPropertiesPodPropertiesImagePullSecret({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory JobDefinitionEksPropertiesPodPropertiesImagePullSecret.fromMap(
      Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesImagePullSecret(
      name: map['name'] as String,
    );
  }
}
