// ignore_for_file: unused_element, unnecessary_cast

class ClusterCoreInstanceFleetInstanceTypeConfigConfiguration {
  /// Classification within a configuration.
  final String? classification;

  /// Map of properties specified within a configuration classification.
  final Map<String, String>? properties;

  /// Creates a new [ClusterCoreInstanceFleetInstanceTypeConfigConfiguration].
  /// [classification] Classification within a configuration.
  /// [properties] Map of properties specified within a configuration classification.
  ClusterCoreInstanceFleetInstanceTypeConfigConfiguration({
    this.classification,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?classification,
      'properties': ?properties,
    };
  }

  factory ClusterCoreInstanceFleetInstanceTypeConfigConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterCoreInstanceFleetInstanceTypeConfigConfiguration(
      classification: map['classification'] == null
          ? null
          : map['classification'] as String,
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
    );
  }
}
