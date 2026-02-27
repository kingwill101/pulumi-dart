// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionRuntimePlatform {
  /// Must be set to either `X86_64` or `ARM64`; see [cpu architecture](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#runtime-platform)
  final String? cpuArchitecture;

  /// If the `requires_compatibilities` is `FARGATE` this field is required; must be set to a valid option from the [operating system family in the runtime platform](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#runtime-platform) setting
  final String? operatingSystemFamily;

  TaskDefinitionRuntimePlatform({
    this.cpuArchitecture,
    this.operatingSystemFamily,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpuArchitectureValue = cpuArchitecture;
    if (cpuArchitectureValue != null) {
      map['cpuArchitecture'] = cpuArchitectureValue;
    }
    final operatingSystemFamilyValue = operatingSystemFamily;
    if (operatingSystemFamilyValue != null) {
      map['operatingSystemFamily'] = operatingSystemFamilyValue;
    }
    return map;
  }

  factory TaskDefinitionRuntimePlatform.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionRuntimePlatform(
      cpuArchitecture: map['cpuArchitecture'] == null
          ? null
          : map['cpuArchitecture'] as String,
      operatingSystemFamily: map['operatingSystemFamily'] == null
          ? null
          : map['operatingSystemFamily'] as String,
    );
  }
}
