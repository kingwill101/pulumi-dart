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
  const ClusterMasterInstanceFleetInstanceTypeConfigConfiguration({
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
      classification: (() { final guardedValue = map['classification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
