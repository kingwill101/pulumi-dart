// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to an AgriService data connector.
class DataConnectorCredentials {
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

  /// Creates a new [DataConnectorCredentials].
  /// [clientId] Client Id associated with the provider, if type of credentials is OAuthClientCredentials.
  /// [keyName] Name of the key vault key.
  /// [keyVaultUri] Uri of the key vault
  /// [keyVersion] Version of the key vault key.
  /// [kind] Type of credential.
  DataConnectorCredentials({
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

  factory DataConnectorCredentials.fromMap(Map<String, dynamic> map) {
    return DataConnectorCredentials(
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyName: (() {
        final guardedValue = map['keyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultUri: (() {
        final guardedValue = map['keyVaultUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVersion: (() {
        final guardedValue = map['keyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
