// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to an AgriService data connector.
class DataConnectorCredentialsResponse {
  /// Client Id associated with the provider, if type of credentials is OAuthClientCredentials.
  final pulumi.Input<String>? clientId;
  /// Name of the key vault key.
  final pulumi.Input<String>? keyName;
  /// Uri of the key vault
  final pulumi.Input<String>? keyVaultUri;
  /// Version of the key vault key.
  final pulumi.Input<String>? keyVersion;
  /// Type of credential.
  final pulumi.Input<String>? kind;

  /// Creates a new [DataConnectorCredentialsResponse].
  /// [clientId] Client Id associated with the provider, if type of credentials is OAuthClientCredentials.
  /// [keyName] Name of the key vault key.
  /// [keyVaultUri] Uri of the key vault
  /// [keyVersion] Version of the key vault key.
  /// [kind] Type of credential.
  DataConnectorCredentialsResponse({
    this.clientId,
    this.keyName,
    this.keyVaultUri,
    this.keyVersion,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'keyName': ?keyName,
      'keyVaultUri': ?keyVaultUri,
      'keyVersion': ?keyVersion,
      'kind': ?kind,
    };
  }

  factory DataConnectorCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return DataConnectorCredentialsResponse(
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      keyName: map['keyName'] == null ? null : (map['keyName']! as String).input(),
      keyVaultUri: map['keyVaultUri'] == null ? null : (map['keyVaultUri']! as String).input(),
      keyVersion: map['keyVersion'] == null ? null : (map['keyVersion']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
    );
  }
}

