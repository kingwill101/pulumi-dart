// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMasterInstanceFleetInstanceTypeConfigConfiguration {
  /// Classification within a configuration.
  final pulumi.Input<String>? classification;
  /// Map of properties specified within a configuration classification.
  final pulumi.Input<Map<String, String>>? properties;

  /// Creates a new [ClusterMasterInstanceFleetInstanceTypeConfigConfiguration].
  /// [classification] Classification within a configuration.
  /// [properties] Map of properties specified within a configuration classification.
  ClusterMasterInstanceFleetInstanceTypeConfigConfiguration({
    this.classification,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?classification,
      'properties': ?properties,
    };
  }

  factory ClusterMasterInstanceFleetInstanceTypeConfigConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterMasterInstanceFleetInstanceTypeConfigConfiguration(
      classification: map['classification'] == null ? null : (map['classification'] as String).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
    );
  }
}

