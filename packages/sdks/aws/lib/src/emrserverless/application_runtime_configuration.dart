// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationRuntimeConfiguration {
  /// The classification within a configuration.
  final pulumi.Input<String> classification;
  /// A set of properties specified within a configuration classification.
  final pulumi.Input<Map<String, String>>? properties;

  /// Creates a new [ApplicationRuntimeConfiguration].
  /// [classification] The classification within a configuration.
  /// [properties] A set of properties specified within a configuration classification.
  const ApplicationRuntimeConfiguration({
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
      classification: pulumi.Input.fromValue(map['classification'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
