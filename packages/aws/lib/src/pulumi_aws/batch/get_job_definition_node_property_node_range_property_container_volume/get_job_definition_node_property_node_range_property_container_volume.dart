// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_job_definition_node_property_node_range_property_container_volume_efs_volume_configuration/get_job_definition_node_property_node_range_property_container_volume_efs_volume_configuration.dart';
import '../get_job_definition_node_property_node_range_property_container_volume_host/get_job_definition_node_property_node_range_property_container_volume_host.dart';

class GetJobDefinitionNodePropertyNodeRangePropertyContainerVolume {
  /// This parameter is specified when you're using an Amazon Elastic File System file system for job storage.
  final List<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfiguration>
      efsVolumeConfigurations;

  /// The contents of the host parameter determine whether your data volume persists on the host container instance and where it's stored.
  final List<GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeHost>
      hosts;

  /// The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final String name;

  GetJobDefinitionNodePropertyNodeRangePropertyContainerVolume({
    required this.efsVolumeConfigurations,
    required this.hosts,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['efsVolumeConfigurations'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfiguration,
        Map<String,
            dynamic>>(efsVolumeConfigurations, (value) => value.toMap());
    map['hosts'] = Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeHost,
        Map<String, dynamic>>(hosts, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerVolume.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerVolume(
      efsVolumeConfigurations: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfiguration>(
          map['efsVolumeConfigurations'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfiguration
                  .fromMap((value as Map).cast<String, dynamic>())),
      hosts: Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeHost>(
          map['hosts'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeHost
                  .fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
