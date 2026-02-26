// ignore_for_file: unused_element, unnecessary_cast

class GetTaskDefinitionRuntimePlatform {
  /// Must be set to either `X86_64` or `ARM64`; see [cpu architecture](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#runtime-platform)
  final String cpuArchitecture;

  /// If the <span pulumi-lang-nodejs="`requiresCompatibilities`" pulumi-lang-dotnet="`RequiresCompatibilities`" pulumi-lang-go="`requiresCompatibilities`" pulumi-lang-python="`requires_compatibilities`" pulumi-lang-yaml="`requiresCompatibilities`" pulumi-lang-java="`requiresCompatibilities`">`requires_compatibilities`</span> is `FARGATE` this field is required; must be set to a valid option from the [operating system family in the runtime platform](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#runtime-platform) setting
  final String operatingSystemFamily;

  GetTaskDefinitionRuntimePlatform({
    required this.cpuArchitecture,
    required this.operatingSystemFamily,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuArchitecture'] = cpuArchitecture;
    map['operatingSystemFamily'] = operatingSystemFamily;
    return map;
  }

  factory GetTaskDefinitionRuntimePlatform.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionRuntimePlatform(
      cpuArchitecture: map['cpuArchitecture'] as String,
      operatingSystemFamily: map['operatingSystemFamily'] as String,
    );
  }
}
