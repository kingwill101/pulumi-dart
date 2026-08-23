// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_model_response.dart';
import 'identity_model_response.dart';
import 'vmware_migrate_agent_model_custom_properties_response.dart';

/// MigrateAgent model properties.
class MigrateAgentModelPropertiesResponse {
  /// Identity model.
  final pulumi.Input<IdentityModelResponse>? authenticationIdentity;
  /// Gets or sets the MigrateAgent correlation Id.
  final pulumi.Input<String> correlationId;
  /// MigrateAgent model custom properties.
  final pulumi.Input<VMwareMigrateAgentModelCustomPropertiesResponse>? customProperties;
  /// Gets or sets the list of health errors.
  final pulumi.Input<List<HealthErrorModelResponse>> healthErrors;
  /// Gets or sets a value indicating whether MigrateAgent is responsive.
  final pulumi.Input<bool> isResponsive;
  /// Gets or sets the time when last heartbeat was sent by the MigrateAgent.
  final pulumi.Input<String> lastHeartbeat;
  /// Gets or sets the machine Id where MigrateAgent is running.
  final pulumi.Input<String>? machineId;
  /// Gets or sets the machine name where MigrateAgent is running.
  final pulumi.Input<String>? machineName;
  /// Gets or sets the provisioning state of the MigrateAgent.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets the MigrateAgent version.
  final pulumi.Input<String> versionNumber;

  /// Creates a new [MigrateAgentModelPropertiesResponse].
  /// [authenticationIdentity] Identity model.
  /// [correlationId] Gets or sets the MigrateAgent correlation Id.
  /// [customProperties] MigrateAgent model custom properties.
  /// [healthErrors] Gets or sets the list of health errors.
  /// [isResponsive] Gets or sets a value indicating whether MigrateAgent is responsive.
  /// [lastHeartbeat] Gets or sets the time when last heartbeat was sent by the MigrateAgent.
  /// [machineId] Gets or sets the machine Id where MigrateAgent is running.
  /// [machineName] Gets or sets the machine name where MigrateAgent is running.
  /// [provisioningState] Gets or sets the provisioning state of the MigrateAgent.
  /// [versionNumber] Gets or sets the MigrateAgent version.
  const MigrateAgentModelPropertiesResponse({
    this.authenticationIdentity,
    required this.correlationId,
    this.customProperties,
    required this.healthErrors,
    required this.isResponsive,
    required this.lastHeartbeat,
    this.machineId,
    this.machineName,
    required this.provisioningState,
    required this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationIdentity': ?pulumi.Input.mapOptionalInputValue<IdentityModelResponse, Map<String, dynamic>>(authenticationIdentity, (value) => value.toMap()),
      'correlationId': correlationId,
      'customProperties': ?pulumi.Input.mapOptionalInputValue<VMwareMigrateAgentModelCustomPropertiesResponse, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
      'healthErrors': pulumi.Input.mapInputValue<List<HealthErrorModelResponse>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthErrorModelResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isResponsive': isResponsive,
      'lastHeartbeat': lastHeartbeat,
      'machineId': ?machineId,
      'machineName': ?machineName,
      'provisioningState': provisioningState,
      'versionNumber': versionNumber,
    };
  }

  factory MigrateAgentModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrateAgentModelPropertiesResponse(
      authenticationIdentity: (() { final guardedValue = map['authenticationIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityModelResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      correlationId: pulumi.Input.fromValue(map['correlationId'] as String),
      customProperties: (() { final guardedValue = map['customProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMwareMigrateAgentModelCustomPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      healthErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<HealthErrorModelResponse>(map['healthErrors']!, (value) => HealthErrorModelResponse.fromMap((value as Map).cast<String, dynamic>()))),
      isResponsive: pulumi.Input.fromValue(map['isResponsive'] as bool),
      lastHeartbeat: pulumi.Input.fromValue(map['lastHeartbeat'] as String),
      machineId: (() { final guardedValue = map['machineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineName: (() { final guardedValue = map['machineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      versionNumber: pulumi.Input.fromValue(map['versionNumber'] as String),
    );
  }
}
