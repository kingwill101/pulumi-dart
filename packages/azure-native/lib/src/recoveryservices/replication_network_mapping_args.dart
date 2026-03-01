// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_network_mapping_input_properties.dart';

/// {@template pulumi_recoveryservices_replication_network_mapping_args_doc}
/// The set of arguments for ReplicationNetworkMapping.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_replication_network_mapping_args_doc}
class ReplicationNetworkMappingArgs {
  /// Primary fabric name.
  final pulumi.Input<String> fabricName;
  /// Network mapping name.
  final pulumi.Input<String>? networkMappingName;
  /// Primary network name.
  final pulumi.Input<String> networkName;
  /// Input properties for creating network mapping.
  final pulumi.Input<CreateNetworkMappingInputProperties> properties;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ReplicationNetworkMappingArgs].
  /// [fabricName] Primary fabric name.
  /// [networkMappingName] Network mapping name.
  /// [networkName] Primary network name.
  /// [properties] Input properties for creating network mapping.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  ReplicationNetworkMappingArgs({
    required String fabricName,
    String? networkMappingName,
    required String networkName,
    required CreateNetworkMappingInputProperties properties,
    required String resourceGroupName,
    required String resourceName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      networkMappingName = pulumi.Input.asOptionalInput<String>(networkMappingName),
      networkName = pulumi.Input.asInput<String>(networkName),
      properties = pulumi.Input.asInput<CreateNetworkMappingInputProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'networkMappingName': ?networkMappingName,
      'networkName': networkName,
      'properties': pulumi.Input.mapInputValue<CreateNetworkMappingInputProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ReplicationNetworkMappingArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationNetworkMappingArgs(
      fabricName: map['fabricName'] as String,
      networkMappingName: map['networkMappingName'] == null ? null : map['networkMappingName'] as String,
      networkName: map['networkName'] as String,
      properties: CreateNetworkMappingInputProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

