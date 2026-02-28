// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_node_property_node_range_property_container_linux_parameter_device.dart';
import 'get_job_definition_node_property_node_range_property_container_linux_parameter_tmpf.dart';

class GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter {
  /// Any of the host devices to expose to the container.
  final List<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice>
      devices;

  /// If true, run an init process inside the container that forwards signals and reaps processes.
  final bool initProcessEnabled;

  /// The total amount of swap memory (in MiB) a container can use.
  final int maxSwap;

  /// The value for the size (in MiB) of the `/dev/shm` volume.
  final int sharedMemorySize;

  /// You can use this parameter to tune a container's memory swappiness behavior.
  final int swappiness;

  /// The container path, mount options, and size (in MiB) of the tmpfs mount.
  final List<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf>
      tmpfs;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter].
  /// [devices] Any of the host devices to expose to the container.
  /// [initProcessEnabled] If true, run an init process inside the container that forwards signals and reaps processes.
  /// [maxSwap] The total amount of swap memory (in MiB) a container can use.
  /// [sharedMemorySize] The value for the size (in MiB) of the `/dev/shm` volume.
  /// [swappiness] You can use this parameter to tune a container's memory swappiness behavior.
  /// [tmpfs] The container path, mount options, and size (in MiB) of the tmpfs mount.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter({
    required this.devices,
    required this.initProcessEnabled,
    required this.maxSwap,
    required this.sharedMemorySize,
    required this.swappiness,
    required this.tmpfs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['devices'] = pulumi.Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice,
        Map<String, dynamic>>(devices, (value) => value.toMap());
    map['initProcessEnabled'] = initProcessEnabled;
    map['maxSwap'] = maxSwap;
    map['sharedMemorySize'] = sharedMemorySize;
    map['swappiness'] = swappiness;
    map['tmpfs'] = pulumi.Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf,
        Map<String, dynamic>>(tmpfs, (value) => value.toMap());
    return map;
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter(
      devices: pulumi.Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice>(
          map['devices'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice
                  .fromMap((value as Map).cast<String, dynamic>())),
      initProcessEnabled: map['initProcessEnabled'] as bool,
      maxSwap: map['maxSwap'] as int,
      sharedMemorySize: map['sharedMemorySize'] as int,
      swappiness: map['swappiness'] as int,
      tmpfs: pulumi.Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf>(
          map['tmpfs'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
