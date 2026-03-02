// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionRuntimePlatform {
  /// Must be set to either `X86_64` or `ARM64`; see [cpu architecture](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#runtime-platform)
  final pulumi.Input<String>? cpuArchitecture;
  /// If the `requires_compatibilities` is `FARGATE` this field is required; must be set to a valid option from the [operating system family in the runtime platform](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#runtime-platform) setting
  final pulumi.Input<String>? operatingSystemFamily;

  /// Creates a new [TaskDefinitionRuntimePlatform].
  /// [cpuArchitecture] Must be set to either `X86_64` or `ARM64`; see [cpu architecture](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#runtime-platform)
  /// [operatingSystemFamily] If the `requires_compatibilities` is `FARGATE` this field is required; must be set to a valid option from the [operating system family in the runtime platform](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#runtime-platform) setting
  TaskDefinitionRuntimePlatform({
    this.cpuArchitecture,
    this.operatingSystemFamily,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuArchitecture': ?cpuArchitecture,
      'operatingSystemFamily': ?operatingSystemFamily,
    };
  }

  factory TaskDefinitionRuntimePlatform.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionRuntimePlatform(
      cpuArchitecture: map['cpuArchitecture'] == null ? null : (map['cpuArchitecture'] as String).input(),
      operatingSystemFamily: map['operatingSystemFamily'] == null ? null : (map['operatingSystemFamily'] as String).input(),
    );
  }
}

