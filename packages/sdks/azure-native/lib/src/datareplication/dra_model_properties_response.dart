// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_model_response.dart';
import 'identity_model_response.dart';
import 'vmware_dra_model_custom_properties_response.dart';

/// Dra model properties.
class DraModelPropertiesResponse {
  /// Identity model.
  final pulumi.Input<IdentityModelResponse> authenticationIdentity;
  /// Gets or sets the Dra correlation Id.
  final pulumi.Input<String> correlationId;
  /// Dra model custom properties.
  final pulumi.Input<VMwareDraModelCustomPropertiesResponse> customProperties;
  /// Gets or sets the list of health errors.
  final pulumi.Input<List<HealthErrorModelResponse>> healthErrors;
  /// Gets or sets a value indicating whether Dra is responsive.
  final pulumi.Input<bool> isResponsive;
  /// Gets or sets the time when last heartbeat was sent by the Dra.
  final pulumi.Input<String> lastHeartbeat;
  /// Gets or sets the machine Id where Dra is running.
  final pulumi.Input<String> machineId;
  /// Gets or sets the machine name where Dra is running.
  final pulumi.Input<String> machineName;
  /// Gets or sets the provisioning state of the Dra.
  final pulumi.Input<String> provisioningState;
  /// Identity model.
  final pulumi.Input<IdentityModelResponse> resourceAccessIdentity;
  /// Gets or sets the Dra version.
  final pulumi.Input<String> versionNumber;

  /// Creates a new [DraModelPropertiesResponse].
  /// [authenticationIdentity] Identity model.
  /// [correlationId] Gets or sets the Dra correlation Id.
  /// [customProperties] Dra model custom properties.
  /// [healthErrors] Gets or sets the list of health errors.
  /// [isResponsive] Gets or sets a value indicating whether Dra is responsive.
  /// [lastHeartbeat] Gets or sets the time when last heartbeat was sent by the Dra.
  /// [machineId] Gets or sets the machine Id where Dra is running.
  /// [machineName] Gets or sets the machine name where Dra is running.
  /// [provisioningState] Gets or sets the provisioning state of the Dra.
  /// [resourceAccessIdentity] Identity model.
  /// [versionNumber] Gets or sets the Dra version.
  DraModelPropertiesResponse({
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
      'customProperties': pulumi.Input.mapInputValue<VMwareDraModelCustomPropertiesResponse, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
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

  factory DraModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DraModelPropertiesResponse(
      authenticationIdentity: (IdentityModelResponse.fromMap((map['authenticationIdentity'] as Map).cast<String, dynamic>())).input(),
      correlationId: (map['correlationId'] as String).input(),
      customProperties: (VMwareDraModelCustomPropertiesResponse.fromMap((map['customProperties'] as Map).cast<String, dynamic>())).input(),
      healthErrors: (pulumi.Input.decodeList<HealthErrorModelResponse>(map['healthErrors'], (value) => HealthErrorModelResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isResponsive: (map['isResponsive'] as bool).input(),
      lastHeartbeat: (map['lastHeartbeat'] as String).input(),
      machineId: (map['machineId'] as String).input(),
      machineName: (map['machineName'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      resourceAccessIdentity: (IdentityModelResponse.fromMap((map['resourceAccessIdentity'] as Map).cast<String, dynamic>())).input(),
      versionNumber: (map['versionNumber'] as String).input(),
    );
  }
}

