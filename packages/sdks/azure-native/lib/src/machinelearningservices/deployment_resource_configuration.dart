// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentResourceConfiguration {
  /// Optional number of instances or nodes used by the compute target.
  final pulumi.Input<int?>? instanceCount;
  /// Optional type of VM used as supported by the compute target.
  final pulumi.Input<String?>? instanceType;
  /// Additional properties bag.
  final pulumi.Input<Map<String, dynamic>?>? properties;

  /// Creates a new [DeploymentResourceConfiguration].
  /// [instanceCount] Optional number of instances or nodes used by the compute target.
  /// [instanceType] Optional type of VM used as supported by the compute target.
  /// [properties] Additional properties bag.
  DeploymentResourceConfiguration({
    pulumi.Input<int?>? instanceCount,
    this.instanceType,
    this.properties,
  }) : instanceCount = instanceCount ?? pulumi.Input.fromValue(1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'instanceType': ?instanceType,
      'properties': ?properties,
    };
  }

  factory DeploymentResourceConfiguration.fromMap(Map<String, dynamic> map) {
    return DeploymentResourceConfiguration(
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
