// ignore_for_file: unused_element, unnecessary_cast


class GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig {
  /// ARN of the Capacity Provider.
  final String capacityProviderArn;
  /// Memory GiB per vCPU for the execution environment.
  final double executionEnvironmentMemoryGibPerVcpu;
  /// Maximum concurrency per execution environment.
  final int perExecutionEnvironmentMaxConcurrency;

  /// Creates a new [GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig].
  /// [capacityProviderArn] ARN of the Capacity Provider.
  /// [executionEnvironmentMemoryGibPerVcpu] Memory GiB per vCPU for the execution environment.
  /// [perExecutionEnvironmentMaxConcurrency] Maximum concurrency per execution environment.
  GetFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig({
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
      capacityProviderArn: map['capacityProviderArn'] as String,
      executionEnvironmentMemoryGibPerVcpu: map['executionEnvironmentMemoryGibPerVcpu'] as double,
      perExecutionEnvironmentMaxConcurrency: map['perExecutionEnvironmentMaxConcurrency'] as int,
    );
  }
}

