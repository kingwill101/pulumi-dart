// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity.dart';
import 'key_vault_properties.dart';

/// Workspace properties
class WorkspaceProperties {
  /// Agent Subnet ID for agent resources.
  final pulumi.Input<String?>? agentSubnetId;
  /// Whether or not to use a customer managed key when encrypting data at rest
  final pulumi.Input<dynamic>? customerManagedKeys;
  /// The key to use for encrypting data at rest when customer managed keys are enabled.
  final pulumi.Input<KeyVaultProperties?>? keyVaultProperties;
  /// The Log Analytics Cluster to use for debug logs. This is required when Customer Managed Keys are enabled.
  final pulumi.Input<String?>? logAnalyticsClusterId;
  /// Private Endpoint Subnet ID for private endpoint connections.
  final pulumi.Input<String?>? privateEndpointSubnetId;
  /// Whether or not public network access is allowed for this resource. For security reasons, it is recommended to disable it whenever possible.
  final pulumi.Input<dynamic>? publicNetworkAccess;
  /// List of linked SuperComputers.
  final pulumi.Input<List<String>?>? supercomputerIds;
  /// Identity IDs used for leveraging Workspace resources.
  final pulumi.Input<Identity> workspaceIdentity;
  /// Function Subnet ID for workspace resources.
  final pulumi.Input<String?>? workspaceSubnetId;

  /// Creates a new [WorkspaceProperties].
  /// [agentSubnetId] Agent Subnet ID for agent resources.
  /// [customerManagedKeys] Whether or not to use a customer managed key when encrypting data at rest
  /// [keyVaultProperties] The key to use for encrypting data at rest when customer managed keys are enabled.
  /// [logAnalyticsClusterId] The Log Analytics Cluster to use for debug logs. This is required when Customer Managed Keys are enabled.
  /// [privateEndpointSubnetId] Private Endpoint Subnet ID for private endpoint connections.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this resource. For security reasons, it is recommended to disable it whenever possible.
  /// [supercomputerIds] List of linked SuperComputers.
  /// [workspaceIdentity] Identity IDs used for leveraging Workspace resources.
  /// [workspaceSubnetId] Function Subnet ID for workspace resources.
  const WorkspaceProperties({
    this.agentSubnetId,
    this.customerManagedKeys,
    this.keyVaultProperties,
    this.logAnalyticsClusterId,
    this.privateEndpointSubnetId,
    this.publicNetworkAccess,
    this.supercomputerIds,
    required this.workspaceIdentity,
    this.workspaceSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSubnetId': ?agentSubnetId,
      'customerManagedKeys': ?customerManagedKeys,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'logAnalyticsClusterId': ?logAnalyticsClusterId,
      'privateEndpointSubnetId': ?privateEndpointSubnetId,
      'publicNetworkAccess': ?publicNetworkAccess,
      'supercomputerIds': ?supercomputerIds,
      'workspaceIdentity': pulumi.Input.mapInputValue<Identity, Map<String, dynamic>>(workspaceIdentity, (value) => value.toMap()),
      'workspaceSubnetId': ?workspaceSubnetId,
    };
  }

  factory WorkspaceProperties.fromMap(Map<String, dynamic> map) {
    return WorkspaceProperties(
      agentSubnetId: (() { final guardedValue = map['agentSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKeys: (() { final guardedValue = map['customerManagedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logAnalyticsClusterId: (() { final guardedValue = map['logAnalyticsClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointSubnetId: (() { final guardedValue = map['privateEndpointSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      supercomputerIds: (() { final guardedValue = map['supercomputerIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      workspaceIdentity: pulumi.Input.fromValue(Identity.fromMap((map['workspaceIdentity']! as Map).cast<String, dynamic>())),
      workspaceSubnetId: (() { final guardedValue = map['workspaceSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
