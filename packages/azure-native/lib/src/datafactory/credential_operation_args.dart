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
    String? credentialName,
    required String factoryName,
    required ManagedIdentityCredential properties,
    required String resourceGroupName,
  }) :
      credentialName = pulumi.Input.asOptionalInput<String>(credentialName),
      factoryName = pulumi.Input.asInput<String>(factoryName),
      properties = pulumi.Input.asInput<ManagedIdentityCredential>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      credentialName: map['credentialName'] == null ? null : map['credentialName'] as String,
      factoryName: map['factoryName'] as String,
      properties: ManagedIdentityCredential.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

