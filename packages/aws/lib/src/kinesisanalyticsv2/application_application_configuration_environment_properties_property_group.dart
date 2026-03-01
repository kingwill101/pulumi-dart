// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup {
  /// The key of the application execution property key-value map.
  final String propertyGroupId;

  /// Application execution property key-value map.
  final Map<String, String> propertyMap;

  /// Creates a new [ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup].
  /// [propertyGroupId] The key of the application execution property key-value map.
  /// [propertyMap] Application execution property key-value map.
  ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup({
    required this.propertyGroupId,
    required this.propertyMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyGroupId': propertyGroupId,
      'propertyMap': propertyMap,
    };
  }

  factory ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup(
      propertyGroupId: map['propertyGroupId'] as String,
      propertyMap: (map['propertyMap'] as Map).cast<String, String>(),
    );
  }
}
