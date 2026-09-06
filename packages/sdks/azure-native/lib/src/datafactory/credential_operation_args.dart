// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_credential_operation_args_doc}
/// The set of arguments for CredentialOperation.
/// {@endtemplate}
/// {@macro pulumi_datafactory_credential_operation_args_doc}
class CredentialOperationArgs {
  /// Credential name
  final pulumi.Input<String?>? credentialName;
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// Properties of credentials.
  final pulumi.Input<dynamic> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CredentialOperationArgs].
  /// [credentialName] Credential name
  /// [factoryName] The factory name.
  /// [properties] Properties of credentials.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const CredentialOperationArgs({
    this.credentialName,
    required this.factoryName,
    required this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialName': ?credentialName,
      'factoryName': factoryName,
      'properties': properties,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CredentialOperationArgs.fromMap(Map<String, dynamic> map) {
    return CredentialOperationArgs(
      credentialName: (() { final guardedValue = map['credentialName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      properties: pulumi.Input.fromValue(map['properties']),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
