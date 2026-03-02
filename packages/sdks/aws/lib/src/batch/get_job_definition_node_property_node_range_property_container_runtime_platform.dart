// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform {
  /// The vCPU architecture. The default value is X86_64. Valid values are X86_64 and ARM64.
  final pulumi.Input<String> cpuArchitecture;
  /// The operating system for the compute environment. V
  final pulumi.Input<String> operatingSystemFamily;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform].
  /// [cpuArchitecture] The vCPU architecture. The default value is X86_64. Valid values are X86_64 and ARM64.
  /// [operatingSystemFamily] The operating system for the compute environment. V
  GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform({
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
      cpuArchitecture: (map['cpuArchitecture'] as String).input(),
      operatingSystemFamily: (map['operatingSystemFamily'] as String).input(),
    );
  }
}

