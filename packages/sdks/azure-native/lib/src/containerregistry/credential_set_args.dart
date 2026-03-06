// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_credential.dart';
import 'identity_properties.dart';

/// {@template pulumi_containerregistry_credential_set_args_doc}
/// The set of arguments for CredentialSet.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_credential_set_args_doc}
class CredentialSetArgs {
  /// List of authentication credentials stored for an upstream.
  /// Usually consists of a primary and an optional secondary credential.
  final pulumi.Input<List<AuthCredential>>? authCredentials;
  /// The name of the credential set.
  final pulumi.Input<String>? credentialSetName;
  /// Identities associated with the resource. This is used to access the KeyVault secrets.
  final pulumi.Input<IdentityProperties>? identity;
  /// The credentials are stored for this upstream or login server.
  final pulumi.Input<String>? loginServer;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CredentialSetArgs].
  /// [authCredentials] List of authentication credentials stored for an upstream.
  /// [credentialSetName] The name of the credential set.
  /// [identity] Identities associated with the resource. This is used to access the KeyVault secrets.
  /// [loginServer] The credentials are stored for this upstream or login server.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const CredentialSetArgs({
    this.authCredentials,
    this.credentialSetName,
    this.identity,
    this.loginServer,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCredentials': ?pulumi.Input.mapOptionalInputValue<List<AuthCredential>, List<Map<String, dynamic>>>(authCredentials, (value) => pulumi.Input.encodeList<AuthCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'credentialSetName': ?credentialSetName,
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityProperties, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'loginServer': ?loginServer,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CredentialSetArgs.fromMap(Map<String, dynamic> map) {
    return CredentialSetArgs(
      authCredentials: (() { final guardedValue = map['authCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthCredential>(guardedValue, (value) => AuthCredential.fromMap((value as Map).cast<String, dynamic>()))); })(),
      credentialSetName: (() { final guardedValue = map['credentialSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loginServer: (() { final guardedValue = map['loginServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

