// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice {
  /// The absolute file path in the container where the tmpfs volume is mounted.
  final String containerPath;

  /// The path for the device on the host container instance.
  final String hostPath;

  /// The explicit permissions to provide to the container for the device.
  final List<String> permissions;

  GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice({
    required this.containerPath,
    required this.hostPath,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerPath'] = containerPath;
    map['hostPath'] = hostPath;
    map['permissions'] = permissions;
    return map;
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice(
      containerPath: map['containerPath'] as String,
      hostPath: map['hostPath'] as String,
      permissions: (map['permissions'] as List).cast<String>(),
    );
  }
}
