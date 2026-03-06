// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_model.dart';
import 'vmware_migrate_agent_model_custom_properties.dart';

/// MigrateAgent model properties.
class MigrateAgentModelProperties {
  /// Identity model.
  final pulumi.Input<IdentityModel>? authenticationIdentity;
  /// MigrateAgent model custom properties.
  final pulumi.Input<VMwareMigrateAgentModelCustomProperties>? customProperties;
  /// Gets or sets the machine Id where MigrateAgent is running.
  final pulumi.Input<String>? machineId;
  /// Gets or sets the machine name where MigrateAgent is running.
  final pulumi.Input<String>? machineName;

  /// Creates a new [MigrateAgentModelProperties].
  /// [authenticationIdentity] Identity model.
  /// [customProperties] MigrateAgent model custom properties.
  /// [machineId] Gets or sets the machine Id where MigrateAgent is running.
  /// [machineName] Gets or sets the machine name where MigrateAgent is running.
  const MigrateAgentModelProperties({
    this.authenticationIdentity,
    this.customProperties,
    this.machineId,
    this.machineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationIdentity': ?pulumi.Input.mapOptionalInputValue<IdentityModel, Map<String, dynamic>>(authenticationIdentity, (value) => value.toMap()),
      'customProperties': ?pulumi.Input.mapOptionalInputValue<VMwareMigrateAgentModelCustomProperties, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
      'machineId': ?machineId,
      'machineName': ?machineName,
    };
  }

  factory MigrateAgentModelProperties.fromMap(Map<String, dynamic> map) {
    return MigrateAgentModelProperties(
      authenticationIdentity: (() { final guardedValue = map['authenticationIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customProperties: (() { final guardedValue = map['customProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMwareMigrateAgentModelCustomProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      machineId: (() { final guardedValue = map['machineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineName: (() { final guardedValue = map['machineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

