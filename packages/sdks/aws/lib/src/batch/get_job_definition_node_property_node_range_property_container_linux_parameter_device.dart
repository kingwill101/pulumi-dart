// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice {
  /// The absolute file path in the container where the tmpfs volume is mounted.
  final pulumi.Input<String> containerPath;

  /// The path for the device on the host container instance.
  final pulumi.Input<String> hostPath;

  /// The explicit permissions to provide to the container for the device.
  final pulumi.Input<List<String>> permissions;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice].
  /// [containerPath] The absolute file path in the container where the tmpfs volume is mounted.
  /// [hostPath] The path for the device on the host container instance.
  /// [permissions] The explicit permissions to provide to the container for the device.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice({
    required this.containerPath,
    required this.hostPath,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': containerPath,
      'hostPath': hostPath,
      'permissions': permissions,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice(
      containerPath: pulumi.Input.fromValue(map['containerPath'] as String),
      hostPath: pulumi.Input.fromValue(map['hostPath'] as String),
      permissions: pulumi.Input.fromValue(
        (map['permissions'] as List).cast<String>(),
      ),
    );
  }
}
