// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replication_network_mapping_args_doc}
/// Arguments for getReplicationNetworkMapping.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replication_network_mapping_args_doc}
class GetReplicationNetworkMappingArgs {
  /// Primary fabric name.
  final pulumi.Input<String> fabricName;
  /// Network mapping name.
  final pulumi.Input<String> networkMappingName;
  /// Primary network name.
  final pulumi.Input<String> networkName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetReplicationNetworkMappingArgs].
  /// [fabricName] Primary fabric name.
  /// [networkMappingName] Network mapping name.
  /// [networkName] Primary network name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  GetReplicationNetworkMappingArgs({
    required String fabricName,
    required String networkMappingName,
    required String networkName,
    required String resourceGroupName,
    required String resourceName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      networkMappingName = pulumi.Input.asInput<String>(networkMappingName),
      networkName = pulumi.Input.asInput<String>(networkName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'networkMappingName': networkMappingName,
      'networkName': networkName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetReplicationNetworkMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationNetworkMappingArgs(
      fabricName: map['fabricName'] as String,
      networkMappingName: map['networkMappingName'] as String,
      networkName: map['networkName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

