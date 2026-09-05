// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_node_property_node_range_property_container_linux_parameter_device.dart';
import 'get_job_definition_node_property_node_range_property_container_linux_parameter_tmpf.dart';

class GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter {
  /// Host devices to expose to the container. See `devices` below.
  final pulumi.Input<List<GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice>> devices;
  /// If true, run an init process inside the container that forwards signals and reaps processes.
  final pulumi.Input<bool> initProcessEnabled;
  /// Total amount of swap memory (in MiB) a container can use.
  final pulumi.Input<int> maxSwap;
  /// Value for the size (in MiB) of the `/dev/shm` volume.
  final pulumi.Input<int> sharedMemorySize;
  /// Value used to tune a container's memory swappiness behavior.
  final pulumi.Input<int> swappiness;
  /// Container path, mount options, and size (in MiB) of the tmpfs mount. See `tmpfs` below.
  final pulumi.Input<List<GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf>> tmpfs;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter].
  /// [devices] Host devices to expose to the container. See `devices` below.
  /// [initProcessEnabled] If true, run an init process inside the container that forwards signals and reaps processes.
  /// [maxSwap] Total amount of swap memory (in MiB) a container can use.
  /// [sharedMemorySize] Value for the size (in MiB) of the `/dev/shm` volume.
  /// [swappiness] Value used to tune a container's memory swappiness behavior.
  /// [tmpfs] Container path, mount options, and size (in MiB) of the tmpfs mount. See `tmpfs` below.
  const GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameter({
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
      devices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice>(map['devices']!, (value) => GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterDevice.fromMap((value as Map).cast<String, dynamic>()))),
      initProcessEnabled: pulumi.Input.fromValue(map['initProcessEnabled'] as bool),
      maxSwap: pulumi.Input.fromValue((map['maxSwap'] as num).toInt()),
      sharedMemorySize: pulumi.Input.fromValue((map['sharedMemorySize'] as num).toInt()),
      swappiness: pulumi.Input.fromValue((map['swappiness'] as num).toInt()),
      tmpfs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf>(map['tmpfs']!, (value) => GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
