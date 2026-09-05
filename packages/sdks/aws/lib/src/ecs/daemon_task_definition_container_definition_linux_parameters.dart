// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_task_definition_container_definition_linux_parameters_capabilities.dart';
import 'daemon_task_definition_container_definition_linux_parameters_device.dart';
import 'daemon_task_definition_container_definition_linux_parameters_tmpf.dart';

class DaemonTaskDefinitionContainerDefinitionLinuxParameters {
  /// Linux capabilities for the container. Detailed below.
  final pulumi.Input<DaemonTaskDefinitionContainerDefinitionLinuxParametersCapabilities?>? capabilities;
  /// Any host devices to expose to the container. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionContainerDefinitionLinuxParametersDevice>?>? devices;
  /// Run an init process inside the container that forwards signals and reaps processes.
  final pulumi.Input<bool?>? initProcessEnabled;
  /// Container path, mount options, and size of the tmpfs mount. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionContainerDefinitionLinuxParametersTmpf>?>? tmpfs;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionLinuxParameters].
  /// [capabilities] Linux capabilities for the container. Detailed below.
  /// [devices] Any host devices to expose to the container. Detailed below.
  /// [initProcessEnabled] Run an init process inside the container that forwards signals and reaps processes.
  /// [tmpfs] Container path, mount options, and size of the tmpfs mount. Detailed below.
  const DaemonTaskDefinitionContainerDefinitionLinuxParameters({
    this.capabilities,
    this.devices,
    this.initProcessEnabled,
    this.tmpfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?pulumi.Input.mapOptionalInputValue<DaemonTaskDefinitionContainerDefinitionLinuxParametersCapabilities, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'devices': ?pulumi.Input.mapOptionalInputValue<List<DaemonTaskDefinitionContainerDefinitionLinuxParametersDevice>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionContainerDefinitionLinuxParametersDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initProcessEnabled': ?initProcessEnabled,
      'tmpfs': ?pulumi.Input.mapOptionalInputValue<List<DaemonTaskDefinitionContainerDefinitionLinuxParametersTmpf>, List<Map<String, dynamic>>>(tmpfs, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionContainerDefinitionLinuxParametersTmpf, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DaemonTaskDefinitionContainerDefinitionLinuxParameters.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionLinuxParameters(
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaemonTaskDefinitionContainerDefinitionLinuxParametersCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinitionLinuxParametersDevice>(guardedValue, (value) => DaemonTaskDefinitionContainerDefinitionLinuxParametersDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initProcessEnabled: (() { final guardedValue = map['initProcessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tmpfs: (() { final guardedValue = map['tmpfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinitionLinuxParametersTmpf>(guardedValue, (value) => DaemonTaskDefinitionContainerDefinitionLinuxParametersTmpf.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
