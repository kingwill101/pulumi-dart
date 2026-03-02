// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceInstanceConfiguration {
  /// Number of CPU units reserved for each instance of your App Runner service represented as a String. Defaults to `1024`. Valid values: `256|512|1024|2048|4096|(0.25|0.5|1|2|4) vCPU`.
  final pulumi.Input<String>? cpu;
  /// ARN of an IAM role that provides permissions to your App Runner service. These are permissions that your code needs when it calls any AWS APIs.
  final pulumi.Input<String>? instanceRoleArn;
  /// Amount of memory, in MB or GB, reserved for each instance of your App Runner service. Defaults to `2048`. Valid values: `512|1024|2048|3072|4096|6144|8192|10240|12288|(0.5|1|2|3|4|6|8|10|12) GB`.
  final pulumi.Input<String>? memory;

  /// Creates a new [ServiceInstanceConfiguration].
  /// [cpu] Number of CPU units reserved for each instance of your App Runner service represented as a String. Defaults to `1024`. Valid values: `256|512|1024|2048|4096|(0.25|0.5|1|2|4) vCPU`.
  /// [instanceRoleArn] ARN of an IAM role that provides permissions to your App Runner service. These are permissions that your code needs when it calls any AWS APIs.
  /// [memory] Amount of memory, in MB or GB, reserved for each instance of your App Runner service. Defaults to `2048`. Valid values: `512|1024|2048|3072|4096|6144|8192|10240|12288|(0.5|1|2|3|4|6|8|10|12) GB`.
  ServiceInstanceConfiguration({
    this.cpu,
    this.instanceRoleArn,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'instanceRoleArn': ?instanceRoleArn,
      'memory': ?memory,
    };
  }

  factory ServiceInstanceConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceInstanceConfiguration(
      cpu: map['cpu'] == null ? null : ((map['cpu'] as String).input()).input(),
      instanceRoleArn: map['instanceRoleArn'] == null ? null : ((map['instanceRoleArn'] as String).input()).input(),
      memory: map['memory'] == null ? null : ((map['memory'] as String).input()).input(),
    );
  }
}

