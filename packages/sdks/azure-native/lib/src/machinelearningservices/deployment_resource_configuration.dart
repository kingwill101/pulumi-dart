// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentResourceConfiguration {
  /// Optional number of instances or nodes used by the compute target.
  final pulumi.Input<int>? instanceCount;
  /// Optional type of VM used as supported by the compute target.
  final pulumi.Input<String>? instanceType;
  /// Additional properties bag.
  final pulumi.Input<Map<String, dynamic>>? properties;

  /// Creates a new [DeploymentResourceConfiguration].
  /// [instanceCount] Optional number of instances or nodes used by the compute target.
  /// [instanceType] Optional type of VM used as supported by the compute target.
  /// [properties] Additional properties bag.
  DeploymentResourceConfiguration({
    this.instanceCount,
    this.instanceType,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'instanceType': ?instanceType,
      'properties': ?properties,
    };
  }

  factory DeploymentResourceConfiguration.fromMap(Map<String, dynamic> map) {
    return DeploymentResourceConfiguration(
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount']! as int).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, dynamic>()).input(),
    );
  }
}

