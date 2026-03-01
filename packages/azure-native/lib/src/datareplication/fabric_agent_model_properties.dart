// ignore_for_file: unused_element, unnecessary_cast

import 'identity_model.dart';
import 'vmware_fabric_agent_model_custom_properties.dart';

/// Fabric agent model properties.
class FabricAgentModelProperties {
  /// Identity model.
  final IdentityModel authenticationIdentity;
  /// Fabric agent model custom properties.
  final VMwareFabricAgentModelCustomProperties customProperties;
  /// Gets or sets the machine Id where fabric agent is running.
  final String machineId;
  /// Gets or sets the machine name where fabric agent is running.
  final String machineName;
  /// Identity model.
  final IdentityModel resourceAccessIdentity;

  /// Creates a new [FabricAgentModelProperties].
  /// [authenticationIdentity] Identity model.
  /// [customProperties] Fabric agent model custom properties.
  /// [machineId] Gets or sets the machine Id where fabric agent is running.
  /// [machineName] Gets or sets the machine name where fabric agent is running.
  /// [resourceAccessIdentity] Identity model.
  FabricAgentModelProperties({
    required this.authenticationIdentity,
    required this.customProperties,
    required this.machineId,
    required this.machineName,
    required this.resourceAccessIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationIdentity': authenticationIdentity.toMap(),
      'customProperties': customProperties.toMap(),
      'machineId': machineId,
      'machineName': machineName,
      'resourceAccessIdentity': resourceAccessIdentity.toMap(),
    };
  }

  factory FabricAgentModelProperties.fromMap(Map<String, dynamic> map) {
    return FabricAgentModelProperties(
      authenticationIdentity: IdentityModel.fromMap((map['authenticationIdentity'] as Map).cast<String, dynamic>()),
      customProperties: VMwareFabricAgentModelCustomProperties.fromMap((map['customProperties'] as Map).cast<String, dynamic>()),
      machineId: map['machineId'] as String,
      machineName: map['machineName'] as String,
      resourceAccessIdentity: IdentityModel.fromMap((map['resourceAccessIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

