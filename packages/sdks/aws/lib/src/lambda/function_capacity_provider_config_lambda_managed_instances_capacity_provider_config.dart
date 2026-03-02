// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig {
  /// ARN of the Capacity Provider.
  final pulumi.Input<String> capacityProviderArn;
  /// Memory GiB per vCPU for the execution environment.
  final pulumi.Input<double>? executionEnvironmentMemoryGibPerVcpu;
  /// Maximum concurrency per execution environment.
  final pulumi.Input<int>? perExecutionEnvironmentMaxConcurrency;

  /// Creates a new [FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig].
  /// [capacityProviderArn] ARN of the Capacity Provider.
  /// [executionEnvironmentMemoryGibPerVcpu] Memory GiB per vCPU for the execution environment.
  /// [perExecutionEnvironmentMaxConcurrency] Maximum concurrency per execution environment.
  FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig({
    required this.capacityProviderArn,
    this.executionEnvironmentMemoryGibPerVcpu,
    this.perExecutionEnvironmentMaxConcurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProviderArn': capacityProviderArn,
      'executionEnvironmentMemoryGibPerVcpu': ?executionEnvironmentMemoryGibPerVcpu,
      'perExecutionEnvironmentMaxConcurrency': ?perExecutionEnvironmentMaxConcurrency,
    };
  }

  factory FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig.fromMap(Map<String, dynamic> map) {
    return FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig(
      capacityProviderArn: (map['capacityProviderArn'] as String).input(),
      executionEnvironmentMemoryGibPerVcpu: map['executionEnvironmentMemoryGibPerVcpu'] == null ? null : ((map['executionEnvironmentMemoryGibPerVcpu'] as double).input()).input(),
      perExecutionEnvironmentMaxConcurrency: map['perExecutionEnvironmentMaxConcurrency'] == null ? null : ((map['perExecutionEnvironmentMaxConcurrency'] as int).input()).input(),
    );
  }
}

