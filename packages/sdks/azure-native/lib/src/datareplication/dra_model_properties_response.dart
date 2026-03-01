// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_model_response.dart';
import 'identity_model_response.dart';
import 'vmware_dra_model_custom_properties_response.dart';

/// Dra model properties.
class DraModelPropertiesResponse {
  /// Identity model.
  final IdentityModelResponse authenticationIdentity;
  /// Gets or sets the Dra correlation Id.
  final String correlationId;
  /// Dra model custom properties.
  final VMwareDraModelCustomPropertiesResponse customProperties;
  /// Gets or sets the list of health errors.
  final List<HealthErrorModelResponse> healthErrors;
  /// Gets or sets a value indicating whether Dra is responsive.
  final bool isResponsive;
  /// Gets or sets the time when last heartbeat was sent by the Dra.
  final String lastHeartbeat;
  /// Gets or sets the machine Id where Dra is running.
  final String machineId;
  /// Gets or sets the machine name where Dra is running.
  final String machineName;
  /// Gets or sets the provisioning state of the Dra.
  final String provisioningState;
  /// Identity model.
  final IdentityModelResponse resourceAccessIdentity;
  /// Gets or sets the Dra version.
  final String versionNumber;

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
      'authenticationIdentity': authenticationIdentity.toMap(),
      'correlationId': correlationId,
      'customProperties': customProperties.toMap(),
      'healthErrors': pulumi.Input.encodeList<HealthErrorModelResponse, Map<String, dynamic>>(healthErrors, (value) => value.toMap()),
      'isResponsive': isResponsive,
      'lastHeartbeat': lastHeartbeat,
      'machineId': machineId,
      'machineName': machineName,
      'provisioningState': provisioningState,
      'resourceAccessIdentity': resourceAccessIdentity.toMap(),
      'versionNumber': versionNumber,
    };
  }

  factory DraModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DraModelPropertiesResponse(
      authenticationIdentity: IdentityModelResponse.fromMap((map['authenticationIdentity'] as Map).cast<String, dynamic>()),
      correlationId: map['correlationId'] as String,
      customProperties: VMwareDraModelCustomPropertiesResponse.fromMap((map['customProperties'] as Map).cast<String, dynamic>()),
      healthErrors: pulumi.Input.decodeList<HealthErrorModelResponse>(map['healthErrors'], (value) => HealthErrorModelResponse.fromMap((value as Map).cast<String, dynamic>())),
      isResponsive: map['isResponsive'] as bool,
      lastHeartbeat: map['lastHeartbeat'] as String,
      machineId: map['machineId'] as String,
      machineName: map['machineName'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceAccessIdentity: IdentityModelResponse.fromMap((map['resourceAccessIdentity'] as Map).cast<String, dynamic>()),
      versionNumber: map['versionNumber'] as String,
    );
  }
}

