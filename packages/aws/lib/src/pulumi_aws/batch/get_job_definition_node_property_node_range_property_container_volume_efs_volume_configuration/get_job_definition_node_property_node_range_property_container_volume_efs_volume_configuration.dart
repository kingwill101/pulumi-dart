// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_job_definition_node_property_node_range_property_container_volume_efs_volume_configuration_authorization_config/get_job_definition_node_property_node_range_property_container_volume_efs_volume_configuration_authorization_config.dart';

class GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfiguration {
  /// The authorization configuration details for the Amazon EFS file system.
  final List<
          GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig>
      authorizationConfigs;

  /// The Amazon EFS file system ID to use.
  final String fileSystemId;

  /// The directory within the Amazon EFS file system to mount as the root directory inside the host.
  final String rootDirectory;

  /// Determines whether to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server
  final String transitEncryption;

  /// The port to use when sending encrypted data between the Amazon ECS host and the Amazon EFS server.
  final int transitEncryptionPort;

  GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfiguration({
    required this.authorizationConfigs,
    required this.fileSystemId,
    required this.rootDirectory,
    required this.transitEncryption,
    required this.transitEncryptionPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationConfigs'] = pulumi.Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig,
        Map<String, dynamic>>(authorizationConfigs, (value) => value.toMap());
    map['fileSystemId'] = fileSystemId;
    map['rootDirectory'] = rootDirectory;
    map['transitEncryption'] = transitEncryption;
    map['transitEncryptionPort'] = transitEncryptionPort;
    return map;
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfiguration(
      authorizationConfigs: pulumi.Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig>(
          map['authorizationConfigs'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      fileSystemId: map['fileSystemId'] as String,
      rootDirectory: map['rootDirectory'] as String,
      transitEncryption: map['transitEncryption'] as String,
      transitEncryptionPort: map['transitEncryptionPort'] as int,
    );
  }
}
