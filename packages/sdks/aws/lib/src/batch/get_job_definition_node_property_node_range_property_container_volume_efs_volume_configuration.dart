// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_node_property_node_range_property_container_volume_efs_volume_configuration_authorization_config.dart';

class GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfiguration {
  /// The authorization configuration details for the Amazon EFS file system.
  final pulumi.Input<List<GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig>> authorizationConfigs;
  /// The Amazon EFS file system ID to use.
  final pulumi.Input<String> fileSystemId;
  /// The directory within the Amazon EFS file system to mount as the root directory inside the host.
  final pulumi.Input<String> rootDirectory;
  /// Determines whether to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server
  final pulumi.Input<String> transitEncryption;
  /// The port to use when sending encrypted data between the Amazon ECS host and the Amazon EFS server.
  final pulumi.Input<int> transitEncryptionPort;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfiguration].
  /// [authorizationConfigs] The authorization configuration details for the Amazon EFS file system.
  /// [fileSystemId] The Amazon EFS file system ID to use.
  /// [rootDirectory] The directory within the Amazon EFS file system to mount as the root directory inside the host.
  /// [transitEncryption] Determines whether to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server
  /// [transitEncryptionPort] The port to use when sending encrypted data between the Amazon ECS host and the Amazon EFS server.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfiguration({
    required this.authorizationConfigs,
    required this.fileSystemId,
    required this.rootDirectory,
    required this.transitEncryption,
    required this.transitEncryptionPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationConfigs': pulumi.Input.mapInputValue<List<GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig>, List<Map<String, dynamic>>>(authorizationConfigs, (value) => pulumi.Input.encodeList<GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileSystemId': fileSystemId,
      'rootDirectory': rootDirectory,
      'transitEncryption': transitEncryption,
      'transitEncryptionPort': transitEncryptionPort,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfiguration(
      authorizationConfigs: (pulumi.Input.decodeList<GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig>(map['authorizationConfigs']!, (value) => GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeEfsVolumeConfigurationAuthorizationConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fileSystemId: (map['fileSystemId'] as String).input(),
      rootDirectory: (map['rootDirectory'] as String).input(),
      transitEncryption: (map['transitEncryption'] as String).input(),
      transitEncryptionPort: (map['transitEncryptionPort'] as int).input(),
    );
  }
}

