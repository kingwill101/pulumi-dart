// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig {
  /// ARN of the Capacity Provider.
  final pulumi.Input<String> capacityProviderArn;
  /// Memory GiB per vCPU for the execution environment.
  final pulumi.Input<double> executionEnvironmentMemoryGibPerVcpu;
  /// Maximum concurrency per execution environment.
  final pulumi.Input<int> perExecutionEnvironmentMaxConcurrency;

  /// Creates a new [GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig].
  /// [capacityProviderArn] ARN of the Capacity Provider.
  /// [executionEnvironmentMemoryGibPerVcpu] Memory GiB per vCPU for the execution environment.
  /// [perExecutionEnvironmentMaxConcurrency] Maximum concurrency per execution environment.
  const GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig({
    required this.capacityProviderArn,
    required this.executionEnvironmentMemoryGibPerVcpu,
    required this.perExecutionEnvironmentMaxConcurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProviderArn': capacityProviderArn,
      'executionEnvironmentMemoryGibPerVcpu': executionEnvironmentMemoryGibPerVcpu,
      'perExecutionEnvironmentMaxConcurrency': perExecutionEnvironmentMaxConcurrency,
    };
  }

  factory GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig(
      capacityProviderArn: pulumi.Input.fromValue(map['capacityProviderArn'] as String),
      executionEnvironmentMemoryGibPerVcpu: pulumi.Input.fromValue(map['executionEnvironmentMemoryGibPerVcpu'] as double),
      perExecutionEnvironmentMaxConcurrency: pulumi.Input.fromValue(map['perExecutionEnvironmentMaxConcurrency'] as int),
    );
  }
}

