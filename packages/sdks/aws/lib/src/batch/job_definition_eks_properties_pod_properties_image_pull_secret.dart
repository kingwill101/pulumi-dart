// ignore_for_file: unused_element, unnecessary_cast


class JobDefinitionEksPropertiesPodPropertiesImagePullSecret {
  /// Unique identifier.
  final String name;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesImagePullSecret].
  /// [name] Unique identifier.
  JobDefinitionEksPropertiesPodPropertiesImagePullSecret({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesImagePullSecret.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesImagePullSecret(
      name: map['name'] as String,
    );
  }
}

