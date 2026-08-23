// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonTaskDefinitionContainerDefinitionLinuxParametersDevice {
  /// Path inside the container at which to expose the host device.
  final pulumi.Input<String>? containerPath;
  /// Path for the device on the host container instance.
  final pulumi.Input<String> hostPath;
  /// Explicit permissions to provide to the container for the device. Valid values: `read`, `write`, `mknod`.
  final pulumi.Input<List<String>>? permissions;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionLinuxParametersDevice].
  /// [containerPath] Path inside the container at which to expose the host device.
  /// [hostPath] Path for the device on the host container instance.
  /// [permissions] Explicit permissions to provide to the container for the device. Valid values: `read`, `write`, `mknod`.
  const DaemonTaskDefinitionContainerDefinitionLinuxParametersDevice({
    this.containerPath,
    required this.hostPath,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': ?containerPath,
      'hostPath': hostPath,
      'permissions': ?permissions,
    };
  }

  factory DaemonTaskDefinitionContainerDefinitionLinuxParametersDevice.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionLinuxParametersDevice(
      containerPath: (() { final guardedValue = map['containerPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostPath: pulumi.Input.fromValue(map['hostPath'] as String),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
