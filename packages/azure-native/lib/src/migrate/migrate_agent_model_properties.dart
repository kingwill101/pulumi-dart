// ignore_for_file: unused_element, unnecessary_cast

import 'identity_model.dart';
import 'vmware_migrate_agent_model_custom_properties.dart';

/// MigrateAgent model properties.
class MigrateAgentModelProperties {
  /// Identity model.
  final IdentityModel? authenticationIdentity;
  /// MigrateAgent model custom properties.
  final VMwareMigrateAgentModelCustomProperties? customProperties;
  /// Gets or sets the machine Id where MigrateAgent is running.
  final String? machineId;
  /// Gets or sets the machine name where MigrateAgent is running.
  final String? machineName;

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
      'authenticationIdentity': ?authenticationIdentity == null ? null : authenticationIdentity!.toMap(),
      'customProperties': ?customProperties == null ? null : customProperties!.toMap(),
      'machineId': ?machineId,
      'machineName': ?machineName,
    };
  }

  factory MigrateAgentModelProperties.fromMap(Map<String, dynamic> map) {
    return MigrateAgentModelProperties(
      authenticationIdentity: map['authenticationIdentity'] == null ? null : IdentityModel.fromMap((map['authenticationIdentity'] as Map).cast<String, dynamic>()),
      customProperties: map['customProperties'] == null ? null : VMwareMigrateAgentModelCustomProperties.fromMap((map['customProperties'] as Map).cast<String, dynamic>()),
      machineId: map['machineId'] == null ? null : map['machineId'] as String,
      machineName: map['machineName'] == null ? null : map['machineName'] as String,
    );
  }
}

