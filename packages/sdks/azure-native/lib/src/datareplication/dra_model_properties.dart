// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_model.dart';
import 'vmware_dra_model_custom_properties.dart';

/// Dra model properties.
class DraModelProperties {
  /// Identity model.
  final pulumi.Input<IdentityModel> authenticationIdentity;
  /// Dra model custom properties.
  final pulumi.Input<VMwareDraModelCustomProperties> customProperties;
  /// Gets or sets the machine Id where Dra is running.
  final pulumi.Input<String> machineId;
  /// Gets or sets the machine name where Dra is running.
  final pulumi.Input<String> machineName;
  /// Identity model.
  final pulumi.Input<IdentityModel> resourceAccessIdentity;

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
      'authenticationIdentity': pulumi.Input.mapInputValue<IdentityModel, Map<String, dynamic>>(authenticationIdentity, (value) => value.toMap()),
      'customProperties': pulumi.Input.mapInputValue<VMwareDraModelCustomProperties, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
      'machineId': machineId,
      'machineName': machineName,
      'resourceAccessIdentity': pulumi.Input.mapInputValue<IdentityModel, Map<String, dynamic>>(resourceAccessIdentity, (value) => value.toMap()),
    };
  }

  factory DraModelProperties.fromMap(Map<String, dynamic> map) {
    return DraModelProperties(
      authenticationIdentity: (IdentityModel.fromMap((map['authenticationIdentity'] as Map).cast<String, dynamic>())).input(),
      customProperties: (VMwareDraModelCustomProperties.fromMap((map['customProperties'] as Map).cast<String, dynamic>())).input(),
      machineId: (map['machineId'] as String).input(),
      machineName: (map['machineName'] as String).input(),
      resourceAccessIdentity: (IdentityModel.fromMap((map['resourceAccessIdentity'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

