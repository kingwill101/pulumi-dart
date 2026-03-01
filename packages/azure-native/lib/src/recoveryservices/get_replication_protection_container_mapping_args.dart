// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replication_protection_container_mapping_args_doc}
/// Arguments for getReplicationProtectionContainerMapping.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replication_protection_container_mapping_args_doc}
class GetReplicationProtectionContainerMappingArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;
  /// Protection Container mapping name.
  final pulumi.Input<String> mappingName;
  /// Protection container name.
  final pulumi.Input<String> protectionContainerName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetReplicationProtectionContainerMappingArgs].
  /// [fabricName] Fabric name.
  /// [mappingName] Protection Container mapping name.
  /// [protectionContainerName] Protection container name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  GetReplicationProtectionContainerMappingArgs({
    required String fabricName,
    required String mappingName,
    required String protectionContainerName,
    required String resourceGroupName,
    required String resourceName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      mappingName = pulumi.Input.asInput<String>(mappingName),
      protectionContainerName = pulumi.Input.asInput<String>(protectionContainerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'mappingName': mappingName,
      'protectionContainerName': protectionContainerName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetReplicationProtectionContainerMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationProtectionContainerMappingArgs(
      fabricName: map['fabricName'] as String,
      mappingName: map['mappingName'] as String,
      protectionContainerName: map['protectionContainerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

