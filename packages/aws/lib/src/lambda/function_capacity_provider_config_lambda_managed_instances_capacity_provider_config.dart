// ignore_for_file: unused_element, unnecessary_cast

class FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig {
  /// ARN of the Capacity Provider.
  final String capacityProviderArn;

  /// Memory GiB per vCPU for the execution environment.
  final double? executionEnvironmentMemoryGibPerVcpu;

  /// Maximum concurrency per execution environment.
  final int? perExecutionEnvironmentMaxConcurrency;

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
    final map = <String, dynamic>{};
    map['capacityProviderArn'] = capacityProviderArn;
    final executionEnvironmentMemoryGibPerVcpuValue =
        executionEnvironmentMemoryGibPerVcpu;
    if (executionEnvironmentMemoryGibPerVcpuValue != null) {
      map['executionEnvironmentMemoryGibPerVcpu'] =
          executionEnvironmentMemoryGibPerVcpuValue;
    }
    final perExecutionEnvironmentMaxConcurrencyValue =
        perExecutionEnvironmentMaxConcurrency;
    if (perExecutionEnvironmentMaxConcurrencyValue != null) {
      map['perExecutionEnvironmentMaxConcurrency'] =
          perExecutionEnvironmentMaxConcurrencyValue;
    }
    return map;
  }

  factory FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig.fromMap(
      Map<String, dynamic> map) {
    return FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig(
      capacityProviderArn: map['capacityProviderArn'] as String,
      executionEnvironmentMemoryGibPerVcpu:
          map['executionEnvironmentMemoryGibPerVcpu'] == null
              ? null
              : map['executionEnvironmentMemoryGibPerVcpu'] as double,
      perExecutionEnvironmentMaxConcurrency:
          map['perExecutionEnvironmentMaxConcurrency'] == null
              ? null
              : map['perExecutionEnvironmentMaxConcurrency'] as int,
    );
  }
}
