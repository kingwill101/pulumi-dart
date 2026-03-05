// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobResourceConfiguration {
  /// Extra arguments to pass to the Docker run command. This would override any parameters that have already been set by the system, or in this section. This parameter is only supported for Azure ML compute types.
  final pulumi.Input<String>? dockerArgs;
  /// Optional number of instances or nodes used by the compute target.
  final pulumi.Input<int>? instanceCount;
  /// Optional type of VM used as supported by the compute target.
  final pulumi.Input<String>? instanceType;
  /// Additional properties bag.
  final pulumi.Input<Map<String, dynamic>>? properties;
  /// Size of the docker container's shared memory block. This should be in the format of (number)(unit) where number as to be greater than 0 and the unit can be one of b(bytes), k(kilobytes), m(megabytes), or g(gigabytes).
  final pulumi.Input<String>? shmSize;

  /// Creates a new [JobResourceConfiguration].
  /// [dockerArgs] Extra arguments to pass to the Docker run command. This would override any parameters that have already been set by the system, or in this section. This parameter is only supported for Azure ML compute types.
  /// [instanceCount] Optional number of instances or nodes used by the compute target.
  /// [instanceType] Optional type of VM used as supported by the compute target.
  /// [properties] Additional properties bag.
  /// [shmSize] Size of the docker container's shared memory block. This should be in the format of (number)(unit) where number as to be greater than 0 and the unit can be one of b(bytes), k(kilobytes), m(megabytes), or g(gigabytes).
  JobResourceConfiguration({
    this.dockerArgs,
    this.instanceCount,
    this.instanceType,
    this.properties,
    this.shmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockerArgs': ?dockerArgs,
      'instanceCount': ?instanceCount,
      'instanceType': ?instanceType,
      'properties': ?properties,
      'shmSize': ?shmSize,
    };
  }

  factory JobResourceConfiguration.fromMap(Map<String, dynamic> map) {
    return JobResourceConfiguration(
      dockerArgs: (() { final guardedValue = map['dockerArgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      shmSize: (() { final guardedValue = map['shmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

