// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_parameter_reference_response.dart';

/// Deployment parameter for the template.
class DeploymentParameterResponse {
  /// Azure Key Vault parameter reference.
  final KeyVaultParameterReferenceResponse? reference;
  /// Type of the value.
  final String? type;
  /// Input value to the parameter.
  final dynamic value;

  /// Creates a new [DeploymentParameterResponse].
  /// [reference] Azure Key Vault parameter reference.
  /// [type] Type of the value.
  /// [value] Input value to the parameter.
  DeploymentParameterResponse({
    this.reference,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reference': ?reference == null ? null : reference!.toMap(),
      'type': ?type,
      'value': ?value,
    };
  }

  factory DeploymentParameterResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentParameterResponse(
      reference: map['reference'] == null ? null : KeyVaultParameterReferenceResponse.fromMap((map['reference'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}

