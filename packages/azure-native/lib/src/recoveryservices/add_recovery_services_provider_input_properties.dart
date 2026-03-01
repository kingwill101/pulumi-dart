// ignore_for_file: unused_element, unnecessary_cast

import 'identity_provider_input.dart';

/// The properties of an add provider request.
class AddRecoveryServicesProviderInputProperties {
  /// The identity provider input for DRA authentication.
  final IdentityProviderInput authenticationIdentityInput;
  /// The Bios Id of the machine.
  final String? biosId;
  /// The identity provider input for data plane authentication.
  final IdentityProviderInput? dataPlaneAuthenticationIdentityInput;
  /// The Id of the machine where the provider is getting added.
  final String? machineId;
  /// The name of the machine where the provider is getting added.
  final String machineName;
  /// The identity provider input for resource access.
  final IdentityProviderInput resourceAccessIdentityInput;

  /// Creates a new [AddRecoveryServicesProviderInputProperties].
  /// [authenticationIdentityInput] The identity provider input for DRA authentication.
  /// [biosId] The Bios Id of the machine.
  /// [dataPlaneAuthenticationIdentityInput] The identity provider input for data plane authentication.
  /// [machineId] The Id of the machine where the provider is getting added.
  /// [machineName] The name of the machine where the provider is getting added.
  /// [resourceAccessIdentityInput] The identity provider input for resource access.
  AddRecoveryServicesProviderInputProperties({
    required this.authenticationIdentityInput,
    this.biosId,
    this.dataPlaneAuthenticationIdentityInput,
    this.machineId,
    required this.machineName,
    required this.resourceAccessIdentityInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationIdentityInput': authenticationIdentityInput.toMap(),
      'biosId': ?biosId,
      'dataPlaneAuthenticationIdentityInput': ?dataPlaneAuthenticationIdentityInput == null ? null : dataPlaneAuthenticationIdentityInput!.toMap(),
      'machineId': ?machineId,
      'machineName': machineName,
      'resourceAccessIdentityInput': resourceAccessIdentityInput.toMap(),
    };
  }

  factory AddRecoveryServicesProviderInputProperties.fromMap(Map<String, dynamic> map) {
    return AddRecoveryServicesProviderInputProperties(
      authenticationIdentityInput: IdentityProviderInput.fromMap((map['authenticationIdentityInput'] as Map).cast<String, dynamic>()),
      biosId: map['biosId'] == null ? null : map['biosId'] as String,
      dataPlaneAuthenticationIdentityInput: map['dataPlaneAuthenticationIdentityInput'] == null ? null : IdentityProviderInput.fromMap((map['dataPlaneAuthenticationIdentityInput'] as Map).cast<String, dynamic>()),
      machineId: map['machineId'] == null ? null : map['machineId'] as String,
      machineName: map['machineName'] as String,
      resourceAccessIdentityInput: IdentityProviderInput.fromMap((map['resourceAccessIdentityInput'] as Map).cast<String, dynamic>()),
    );
  }
}

