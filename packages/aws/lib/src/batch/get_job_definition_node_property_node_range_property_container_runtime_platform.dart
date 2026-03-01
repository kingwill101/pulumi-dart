// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform {
  /// The vCPU architecture. The default value is X86_64. Valid values are X86_64 and ARM64.
  final String cpuArchitecture;

  /// The operating system for the compute environment. V
  final String operatingSystemFamily;

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

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerRuntimePlatform(
      cpuArchitecture: map['cpuArchitecture'] as String,
      operatingSystemFamily: map['operatingSystemFamily'] as String,
    );
  }
}
