// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_credential.dart';

/// {@template pulumi_datafactory_credential_operation_args_doc}
/// The set of arguments for CredentialOperation.
/// {@endtemplate}
/// {@macro pulumi_datafactory_credential_operation_args_doc}
class CredentialOperationArgs {
  /// Credential name
  final pulumi.Input<String>? credentialName;
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// Properties of credentials.
  final pulumi.Input<ManagedIdentityCredential> properties;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CredentialOperationArgs].
  /// [credentialName] Credential name
  /// [factoryName] The factory name.
  /// [properties] Properties of credentials.
  /// [resourceGroupName] The resource group name.
  CredentialOperationArgs({
    this.credentialName,
    required this.factoryName,
    required this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialName': ?credentialName,
      'factoryName': factoryName,
      'properties': pulumi.Input.mapInputValue<ManagedIdentityCredential, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CredentialOperationArgs.fromMap(Map<String, dynamic> map) {
    return CredentialOperationArgs(
      credentialName: map['credentialName'] == null ? null : (map['credentialName'] as String).input(),
      factoryName: (map['factoryName'] as String).input(),
      properties: (ManagedIdentityCredential.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

