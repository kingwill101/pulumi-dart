// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_properties_identity_response.dart';

/// Key and identity details for Customer Managed Key encryption of load test resource.
class EncryptionPropertiesResponse {
  /// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
  final pulumi.Input<EncryptionPropertiesIdentityResponse>? identity;
  /// key encryption key Url, versioned. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek.
  final pulumi.Input<String>? keyUrl;

  /// Creates a new [EncryptionPropertiesResponse].
  /// [identity] All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
  /// [keyUrl] key encryption key Url, versioned. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek.
  const EncryptionPropertiesResponse({
    this.identity,
    this.keyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<EncryptionPropertiesIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyUrl': ?keyUrl,
    };
  }

  factory EncryptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesResponse(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionPropertiesIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyUrl: (() { final guardedValue = map['keyUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
