// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFleetInstanceTypeConfigConfiguration {
  /// The classification within a configuration.
  final pulumi.Input<String>? classification;

  /// A map of properties specified within a configuration classification
  final pulumi.Input<Map<String, String>>? properties;

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

  factory InstanceFleetInstanceTypeConfigConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceFleetInstanceTypeConfigConfiguration(
      classification: (() {
        final guardedValue = map['classification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
