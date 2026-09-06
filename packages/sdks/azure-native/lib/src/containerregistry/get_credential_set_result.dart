// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_credential_response.dart';
import 'identity_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCredentialSet.
class GetCredentialSetResult {
  /// List of authentication credentials stored for an upstream.
  /// Usually consists of a primary and an optional secondary credential.
  final List<AuthCredentialResponse>? authCredentials;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The creation date of credential store resource.
  final String? creationDate;
  /// The resource ID.
  final String? id;
  /// Identities associated with the resource. This is used to access the KeyVault secrets.
  final IdentityPropertiesResponse? identity;
  /// The credentials are stored for this upstream or login server.
  final String? loginServer;
  /// The name of the resource.
  final String? name;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetCredentialSetResult].
  /// [authCredentials] List of authentication credentials stored for an upstream.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] The creation date of credential store resource.
  /// [id] The resource ID.
  /// [identity] Identities associated with the resource. This is used to access the KeyVault secrets.
  /// [loginServer] The credentials are stored for this upstream or login server.
  /// [name] The name of the resource.
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  const GetCredentialSetResult({
    this.authCredentials,
    this.azureApiVersion,
    this.creationDate,
    this.id,
    this.identity,
    this.loginServer,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCredentials': ?(() { final guardedValue = authCredentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<AuthCredentialResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'creationDate': ?creationDate,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'loginServer': ?loginServer,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetCredentialSetResult.fromMap(Map<String, dynamic> map) {
    return GetCredentialSetResult(
      authCredentials: (() { final guardedValue = map['authCredentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AuthCredentialResponse>(guardedValue, (value) => AuthCredentialResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      loginServer: (() { final guardedValue = map['loginServer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
