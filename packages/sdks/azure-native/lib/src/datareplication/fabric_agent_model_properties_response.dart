// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_model_response.dart';
import 'identity_model_response.dart';
import 'vmware_fabric_agent_model_custom_properties_response.dart';

/// Fabric agent model properties.
class FabricAgentModelPropertiesResponse {
  /// Identity model.
  final pulumi.Input<IdentityModelResponse> authenticationIdentity;
  /// Gets or sets the fabric agent correlation Id.
  final pulumi.Input<String> correlationId;
  /// Fabric agent model custom properties.
  final pulumi.Input<VMwareFabricAgentModelCustomPropertiesResponse> customProperties;
  /// Gets or sets the list of health errors.
  final pulumi.Input<List<HealthErrorModelResponse>> healthErrors;
  /// Gets or sets a value indicating whether the fabric agent is responsive.
  final pulumi.Input<bool> isResponsive;
  /// Gets or sets the time when last heartbeat was sent by the fabric agent.
  final pulumi.Input<String> lastHeartbeat;
  /// Gets or sets the machine Id where fabric agent is running.
  final pulumi.Input<String> machineId;
  /// Gets or sets the machine name where fabric agent is running.
  final pulumi.Input<String> machineName;
  /// Gets or sets the provisioning state of the fabric agent.
  final pulumi.Input<String> provisioningState;
  /// Identity model.
  final pulumi.Input<IdentityModelResponse> resourceAccessIdentity;
  /// Gets or sets the fabric agent version.
  final pulumi.Input<String> versionNumber;

  /// Creates a new [FabricAgentModelPropertiesResponse].
  /// [authenticationIdentity] Identity model.
  /// [correlationId] Gets or sets the fabric agent correlation Id.
  /// [customProperties] Fabric agent model custom properties.
  /// [healthErrors] Gets or sets the list of health errors.
  /// [isResponsive] Gets or sets a value indicating whether the fabric agent is responsive.
  /// [lastHeartbeat] Gets or sets the time when last heartbeat was sent by the fabric agent.
  /// [machineId] Gets or sets the machine Id where fabric agent is running.
  /// [machineName] Gets or sets the machine name where fabric agent is running.
  /// [provisioningState] Gets or sets the provisioning state of the fabric agent.
  /// [resourceAccessIdentity] Identity model.
  /// [versionNumber] Gets or sets the fabric agent version.
  const FabricAgentModelPropertiesResponse({
    required this.authenticationIdentity,
    required this.correlationId,
    required this.customProperties,
    required this.healthErrors,
    required this.isResponsive,
    required this.lastHeartbeat,
    required this.machineId,
    required this.machineName,
    required this.provisioningState,
    required this.resourceAccessIdentity,
    required this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationIdentity': pulumi.Input.mapInputValue<IdentityModelResponse, Map<String, dynamic>>(authenticationIdentity, (value) => value.toMap()),
      'correlationId': correlationId,
      'customProperties': pulumi.Input.mapInputValue<VMwareFabricAgentModelCustomPropertiesResponse, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
      'healthErrors': pulumi.Input.mapInputValue<List<HealthErrorModelResponse>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthErrorModelResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isResponsive': isResponsive,
      'lastHeartbeat': lastHeartbeat,
      'machineId': machineId,
      'machineName': machineName,
      'provisioningState': provisioningState,
      'resourceAccessIdentity': pulumi.Input.mapInputValue<IdentityModelResponse, Map<String, dynamic>>(resourceAccessIdentity, (value) => value.toMap()),
      'versionNumber': versionNumber,
    };
  }

  factory FabricAgentModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FabricAgentModelPropertiesResponse(
      authenticationIdentity: pulumi.Input.fromValue(IdentityModelResponse.fromMap((map['authenticationIdentity']! as Map).cast<String, dynamic>())),
      correlationId: pulumi.Input.fromValue(map['correlationId'] as String),
      customProperties: pulumi.Input.fromValue(VMwareFabricAgentModelCustomPropertiesResponse.fromMap((map['customProperties']! as Map).cast<String, dynamic>())),
      healthErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<HealthErrorModelResponse>(map['healthErrors']!, (value) => HealthErrorModelResponse.fromMap((value as Map).cast<String, dynamic>()))),
      isResponsive: pulumi.Input.fromValue(map['isResponsive'] as bool),
      lastHeartbeat: pulumi.Input.fromValue(map['lastHeartbeat'] as String),
      machineId: pulumi.Input.fromValue(map['machineId'] as String),
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceAccessIdentity: pulumi.Input.fromValue(IdentityModelResponse.fromMap((map['resourceAccessIdentity']! as Map).cast<String, dynamic>())),
      versionNumber: pulumi.Input.fromValue(map['versionNumber'] as String),
    );
  }
}

