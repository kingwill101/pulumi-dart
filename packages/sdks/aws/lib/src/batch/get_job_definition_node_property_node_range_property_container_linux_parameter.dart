// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_node_property_node_range_property_container_linux_parameter_device.dart';
import 'get_job_definition_node_property_node_range_property_container_linux_parameter_tmpf.dart';

class GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter {
  /// Any of the host devices to expose to the container.
  final pulumi.Input<List<GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice>> devices;
  /// If true, run an init process inside the container that forwards signals and reaps processes.
  final pulumi.Input<bool> initProcessEnabled;
  /// The total amount of swap memory (in MiB) a container can use.
  final pulumi.Input<int> maxSwap;
  /// The value for the size (in MiB) of the `/dev/shm` volume.
  final pulumi.Input<int> sharedMemorySize;
  /// You can use this parameter to tune a container's memory swappiness behavior.
  final pulumi.Input<int> swappiness;
  /// The container path, mount options, and size (in MiB) of the tmpfs mount.
  final pulumi.Input<List<GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf>> tmpfs;

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
    return <String, dynamic>{
      'devices': pulumi.Input.mapInputValue<List<GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initProcessEnabled': initProcessEnabled,
      'maxSwap': maxSwap,
      'sharedMemorySize': sharedMemorySize,
      'swappiness': swappiness,
      'tmpfs': pulumi.Input.mapInputValue<List<GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf>, List<Map<String, dynamic>>>(tmpfs, (value) => pulumi.Input.encodeList<GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter(
      devices: (pulumi.Input.decodeList<GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice>(map['devices'], (value) => GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      initProcessEnabled: (map['initProcessEnabled'] as bool).input(),
      maxSwap: (map['maxSwap'] as int).input(),
      sharedMemorySize: (map['sharedMemorySize'] as int).input(),
      swappiness: (map['swappiness'] as int).input(),
      tmpfs: (pulumi.Input.decodeList<GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf>(map['tmpfs'], (value) => GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

