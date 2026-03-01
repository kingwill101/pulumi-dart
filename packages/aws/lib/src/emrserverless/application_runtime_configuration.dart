// ignore_for_file: unused_element, unnecessary_cast


class ApplicationRuntimeConfiguration {
  /// The classification within a configuration.
  final String classification;
  /// A set of properties specified within a configuration classification.
  final Map<String, String>? properties;

  /// Creates a new [ApplicationRuntimeConfiguration].
  /// [classification] The classification within a configuration.
  /// [properties] A set of properties specified within a configuration classification.
  ApplicationRuntimeConfiguration({
    required this.classification,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': classification,
      'properties': ?properties,
    };
  }

  factory ApplicationRuntimeConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationRuntimeConfiguration(
      classification: map['classification'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
    );
  }
}

