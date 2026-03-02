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
  MigrateAgentModelProperties({
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
      authenticationIdentity: map['authenticationIdentity'] == null ? null : (IdentityModel.fromMap((map['authenticationIdentity'] as Map).cast<String, dynamic>())).input(),
      customProperties: map['customProperties'] == null ? null : (VMwareMigrateAgentModelCustomProperties.fromMap((map['customProperties'] as Map).cast<String, dynamic>())).input(),
      machineId: map['machineId'] == null ? null : (map['machineId'] as String).input(),
      machineName: map['machineName'] == null ? null : (map['machineName'] as String).input(),
    );
  }
}

