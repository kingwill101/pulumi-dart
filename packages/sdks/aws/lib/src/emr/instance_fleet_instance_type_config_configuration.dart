// ignore_for_file: unused_element, unnecessary_cast


class InstanceFleetInstanceTypeConfigConfiguration {
  /// The classification within a configuration.
  final String? classification;
  /// A map of properties specified within a configuration classification
  final Map<String, String>? properties;

  /// Creates a new [InstanceFleetInstanceTypeConfigConfiguration].
  /// [classification] The classification within a configuration.
  /// [properties] A map of properties specified within a configuration classification
  InstanceFleetInstanceTypeConfigConfiguration({
    this.classification,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?classification,
      'properties': ?properties,
    };
  }

  factory InstanceFleetInstanceTypeConfigConfiguration.fromMap(Map<String, dynamic> map) {
    return InstanceFleetInstanceTypeConfigConfiguration(
      classification: map['classification'] == null ? null : map['classification'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
    );
  }
}

