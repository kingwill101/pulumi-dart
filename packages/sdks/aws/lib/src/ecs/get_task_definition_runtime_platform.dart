// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTaskDefinitionRuntimePlatform {
  /// Must be set to either `X86_64` or `ARM64`; see [cpu architecture](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#runtime-platform)
  final pulumi.Input<String> cpuArchitecture;
  /// If the `requires_compatibilities` is `FARGATE` this field is required; must be set to a valid option from the [operating system family in the runtime platform](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#runtime-platform) setting
  final pulumi.Input<String> operatingSystemFamily;

  /// Creates a new [GetTaskDefinitionRuntimePlatform].
  /// [cpuArchitecture] Must be set to either `X86_64` or `ARM64`; see [cpu architecture](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#runtime-platform)
  /// [operatingSystemFamily] If the `requires_compatibilities` is `FARGATE` this field is required; must be set to a valid option from the [operating system family in the runtime platform](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#runtime-platform) setting
  GetTaskDefinitionRuntimePlatform({
    required this.cpuArchitecture,
    required this.operatingSystemFamily,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuArchitecture': cpuArchitecture,
      'operatingSystemFamily': operatingSystemFamily,
    };
  }

  factory GetTaskDefinitionRuntimePlatform.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionRuntimePlatform(
      cpuArchitecture: pulumi.Input.fromValue(map['cpuArchitecture'] as String),
      operatingSystemFamily: pulumi.Input.fromValue(map['operatingSystemFamily'] as String),
    );
  }
}

