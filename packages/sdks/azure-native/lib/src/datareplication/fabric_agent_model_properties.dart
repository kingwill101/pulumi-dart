// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_model.dart';
import 'vmware_fabric_agent_model_custom_properties.dart';

/// Fabric agent model properties.
class FabricAgentModelProperties {
  /// Identity model.
  final pulumi.Input<IdentityModel> authenticationIdentity;
  /// Fabric agent model custom properties.
  final pulumi.Input<VMwareFabricAgentModelCustomProperties> customProperties;
  /// Gets or sets the machine Id where fabric agent is running.
  final pulumi.Input<String> machineId;
  /// Gets or sets the machine name where fabric agent is running.
  final pulumi.Input<String> machineName;
  /// Identity model.
  final pulumi.Input<IdentityModel> resourceAccessIdentity;

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
      'authenticationIdentity': pulumi.Input.mapInputValue<IdentityModel, Map<String, dynamic>>(authenticationIdentity, (value) => value.toMap()),
      'customProperties': pulumi.Input.mapInputValue<VMwareFabricAgentModelCustomProperties, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
      'machineId': machineId,
      'machineName': machineName,
      'resourceAccessIdentity': pulumi.Input.mapInputValue<IdentityModel, Map<String, dynamic>>(resourceAccessIdentity, (value) => value.toMap()),
    };
  }

  factory FabricAgentModelProperties.fromMap(Map<String, dynamic> map) {
    return FabricAgentModelProperties(
      authenticationIdentity: pulumi.Input.fromValue(IdentityModel.fromMap((map['authenticationIdentity']! as Map).cast<String, dynamic>())),
      customProperties: pulumi.Input.fromValue(VMwareFabricAgentModelCustomProperties.fromMap((map['customProperties']! as Map).cast<String, dynamic>())),
      machineId: pulumi.Input.fromValue(map['machineId'] as String),
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      resourceAccessIdentity: pulumi.Input.fromValue(IdentityModel.fromMap((map['resourceAccessIdentity']! as Map).cast<String, dynamic>())),
    );
  }
}

