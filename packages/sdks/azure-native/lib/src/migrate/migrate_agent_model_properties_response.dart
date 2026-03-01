// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_model_response.dart';
import 'identity_model_response.dart';
import 'vmware_migrate_agent_model_custom_properties_response.dart';

/// MigrateAgent model properties.
class MigrateAgentModelPropertiesResponse {
  /// Identity model.
  final IdentityModelResponse? authenticationIdentity;
  /// Gets or sets the MigrateAgent correlation Id.
  final String correlationId;
  /// MigrateAgent model custom properties.
  final VMwareMigrateAgentModelCustomPropertiesResponse? customProperties;
  /// Gets or sets the list of health errors.
  final List<HealthErrorModelResponse> healthErrors;
  /// Gets or sets a value indicating whether MigrateAgent is responsive.
  final bool isResponsive;
  /// Gets or sets the time when last heartbeat was sent by the MigrateAgent.
  final String lastHeartbeat;
  /// Gets or sets the machine Id where MigrateAgent is running.
  final String? machineId;
  /// Gets or sets the machine name where MigrateAgent is running.
  final String? machineName;
  /// Gets or sets the provisioning state of the MigrateAgent.
  final String provisioningState;
  /// Gets or sets the MigrateAgent version.
  final String versionNumber;

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
  MigrateAgentModelPropertiesResponse({
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
      'authenticationIdentity': ?authenticationIdentity == null ? null : authenticationIdentity!.toMap(),
      'correlationId': correlationId,
      'customProperties': ?customProperties == null ? null : customProperties!.toMap(),
      'healthErrors': pulumi.Input.encodeList<HealthErrorModelResponse, Map<String, dynamic>>(healthErrors, (value) => value.toMap()),
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
      authenticationIdentity: map['authenticationIdentity'] == null ? null : IdentityModelResponse.fromMap((map['authenticationIdentity'] as Map).cast<String, dynamic>()),
      correlationId: map['correlationId'] as String,
      customProperties: map['customProperties'] == null ? null : VMwareMigrateAgentModelCustomPropertiesResponse.fromMap((map['customProperties'] as Map).cast<String, dynamic>()),
      healthErrors: pulumi.Input.decodeList<HealthErrorModelResponse>(map['healthErrors'], (value) => HealthErrorModelResponse.fromMap((value as Map).cast<String, dynamic>())),
      isResponsive: map['isResponsive'] as bool,
      lastHeartbeat: map['lastHeartbeat'] as String,
      machineId: map['machineId'] == null ? null : map['machineId'] as String,
      machineName: map['machineName'] == null ? null : map['machineName'] as String,
      provisioningState: map['provisioningState'] as String,
      versionNumber: map['versionNumber'] as String,
    );
  }
}

