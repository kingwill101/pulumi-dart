// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform {
  /// vCPU architecture. The default value is X86_64. Valid values are X86_64 and ARM64.
  final pulumi.Input<String> cpuArchitecture;
  /// Operating system for the compute environment.
  final pulumi.Input<String> operatingSystemFamily;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform].
  /// [cpuArchitecture] vCPU architecture. The default value is X86_64. Valid values are X86_64 and ARM64.
  /// [operatingSystemFamily] Operating system for the compute environment.
  const GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform({
    required this.cpuArchitecture,
    required this.operatingSystemFamily,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuArchitecture': cpuArchitecture,
      'operatingSystemFamily': operatingSystemFamily,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform(
      cpuArchitecture: pulumi.Input.fromValue(map['cpuArchitecture'] as String),
      operatingSystemFamily: pulumi.Input.fromValue(map['operatingSystemFamily'] as String),
    );
  }
}
