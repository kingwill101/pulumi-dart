// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RAI External SafetyProvider schema properties.
class RaiExternalSafetyProviderSchemaPropertiesResponse {
  /// Creation time of the safety provider.
  final pulumi.Input<String> createdAt;

  /// The Key Vault URI that contains the api key for safety provider urls.
  final pulumi.Input<String>? keyVaultUri;

  /// Last modified time of the safety provider.
  final pulumi.Input<String> lastModifiedAt;

  /// The managed identity to access the Key Vault.
  final pulumi.Input<String>? managedIdentity;

  /// Safety provider mode sync/async.
  final pulumi.Input<String>? mode;

  /// The unique identifier of the safety provider.
  final pulumi.Input<String>? providerId;

  /// Name of the safety provider.
  final pulumi.Input<String>? providerName;

  /// The name of the secret in Key Vault that contains the api key to access the webhook.
  final pulumi.Input<String>? secretName;

  /// Webhook URL for the safety provider.
  final pulumi.Input<String>? url;

  /// Creates a new [RaiExternalSafetyProviderSchemaPropertiesResponse].
  /// [createdAt] Creation time of the safety provider.
  /// [keyVaultUri] The Key Vault URI that contains the api key for safety provider urls.
  /// [lastModifiedAt] Last modified time of the safety provider.
  /// [managedIdentity] The managed identity to access the Key Vault.
  /// [mode] Safety provider mode sync/async.
  /// [providerId] The unique identifier of the safety provider.
  /// [providerName] Name of the safety provider.
  /// [secretName] The name of the secret in Key Vault that contains the api key to access the webhook.
  /// [url] Webhook URL for the safety provider.
  RaiExternalSafetyProviderSchemaPropertiesResponse({
    required this.createdAt,
    this.keyVaultUri,
    required this.lastModifiedAt,
    this.managedIdentity,
    this.mode,
    this.providerId,
    this.providerName,
    this.secretName,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'keyVaultUri': ?keyVaultUri,
      'lastModifiedAt': lastModifiedAt,
      'managedIdentity': ?managedIdentity,
      'mode': ?mode,
      'providerId': ?providerId,
      'providerName': ?providerName,
      'secretName': ?secretName,
      'url': ?url,
    };
  }

  factory RaiExternalSafetyProviderSchemaPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return RaiExternalSafetyProviderSchemaPropertiesResponse(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      keyVaultUri: (() {
        final guardedValue = map['keyVaultUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastModifiedAt: pulumi.Input.fromValue(map['lastModifiedAt'] as String),
      managedIdentity: (() {
        final guardedValue = map['managedIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      providerId: (() {
        final guardedValue = map['providerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      providerName: (() {
        final guardedValue = map['providerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretName: (() {
        final guardedValue = map['secretName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
