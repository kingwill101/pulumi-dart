// ignore_for_file: unused_element, unnecessary_cast

class ClusterMasterInstanceFleetInstanceTypeConfigConfiguration {
  /// Classification within a configuration.
  final String? classification;

  /// Map of properties specified within a configuration classification.
  final Map<String, String>? properties;

  /// Creates a new [ClusterMasterInstanceFleetInstanceTypeConfigConfiguration].
  /// [classification] Classification within a configuration.
  /// [properties] Map of properties specified within a configuration classification.
  ClusterMasterInstanceFleetInstanceTypeConfigConfiguration({
    this.classification,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final classificationValue = classification;
    if (classificationValue != null) {
      map['classification'] = classificationValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    return map;
  }

  factory ClusterMasterInstanceFleetInstanceTypeConfigConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ClusterMasterInstanceFleetInstanceTypeConfigConfiguration(
      classification: map['classification'] == null
          ? null
          : map['classification'] as String,
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
    );
  }
}
