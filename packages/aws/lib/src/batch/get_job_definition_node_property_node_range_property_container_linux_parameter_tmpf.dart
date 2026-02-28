// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf {
  /// The absolute file path in the container where the tmpfs volume is mounted.
  final String containerPath;

  /// The list of tmpfs volume mount options.
  final List<String> mountOptions;

  /// The size (in MiB) of the tmpfs volume.
  final int size;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf].
  /// [containerPath] The absolute file path in the container where the tmpfs volume is mounted.
  /// [mountOptions] The list of tmpfs volume mount options.
  /// [size] The size (in MiB) of the tmpfs volume.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf({
    required this.containerPath,
    required this.mountOptions,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerPath'] = containerPath;
    map['mountOptions'] = mountOptions;
    map['size'] = size;
    return map;
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf(
      containerPath: map['containerPath'] as String,
      mountOptions: (map['mountOptions'] as List).cast<String>(),
      size: map['size'] as int,
    );
  }
}
