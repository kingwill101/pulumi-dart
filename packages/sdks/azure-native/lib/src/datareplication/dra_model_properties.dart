// ignore_for_file: unused_element, unnecessary_cast

import 'identity_model.dart';
import 'vmware_dra_model_custom_properties.dart';

/// Dra model properties.
class DraModelProperties {
  /// Identity model.
  final IdentityModel authenticationIdentity;
  /// Dra model custom properties.
  final VMwareDraModelCustomProperties customProperties;
  /// Gets or sets the machine Id where Dra is running.
  final String machineId;
  /// Gets or sets the machine name where Dra is running.
  final String machineName;
  /// Identity model.
  final IdentityModel resourceAccessIdentity;

  /// Creates a new [DraModelProperties].
  /// [authenticationIdentity] Identity model.
  /// [customProperties] Dra model custom properties.
  /// [machineId] Gets or sets the machine Id where Dra is running.
  /// [machineName] Gets or sets the machine name where Dra is running.
  /// [resourceAccessIdentity] Identity model.
  DraModelProperties({
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

  factory DraModelProperties.fromMap(Map<String, dynamic> map) {
    return DraModelProperties(
      authenticationIdentity: IdentityModel.fromMap((map['authenticationIdentity'] as Map).cast<String, dynamic>()),
      customProperties: VMwareDraModelCustomProperties.fromMap((map['customProperties'] as Map).cast<String, dynamic>()),
      machineId: map['machineId'] as String,
      machineName: map['machineName'] as String,
      resourceAccessIdentity: IdentityModel.fromMap((map['resourceAccessIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

