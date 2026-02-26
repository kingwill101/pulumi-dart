// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeHost {
  /// The path on the host container instance that's presented to the container.
  final String sourcePath;

  GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeHost({
    required this.sourcePath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourcePath'] = sourcePath;
    return map;
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeHost.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeHost(
      sourcePath: map['sourcePath'] as String,
    );
  }
}
