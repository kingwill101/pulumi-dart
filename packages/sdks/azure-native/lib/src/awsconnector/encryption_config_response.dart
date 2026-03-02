// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_response.dart';

/// Definition of EncryptionConfig
class EncryptionConfigResponse {
  /// <p>Key Management Service (KMS) key. Either the ARN or the alias can be used.</p>
  final pulumi.Input<ProviderResponse>? provider;
  /// <p>Specifies the resources to be encrypted. The only supported value is <code>secrets</code>.</p>
  final pulumi.Input<List<String>>? resources;

  /// Creates a new [EncryptionConfigResponse].
  /// [provider] <p>Key Management Service (KMS) key. Either the ARN or the alias can be used.</p>
  /// [resources] <p>Specifies the resources to be encrypted. The only supported value is <code>secrets</code>.</p>
  EncryptionConfigResponse({
    this.provider,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': ?pulumi.Input.mapOptionalInputValue<ProviderResponse, Map<String, dynamic>>(provider, (value) => value.toMap()),
      'resources': ?resources,
    };
  }

  factory EncryptionConfigResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponse(
      provider: map['provider'] == null ? null : (ProviderResponse.fromMap((map['provider'] as Map).cast<String, dynamic>())).input(),
      resources: map['resources'] == null ? null : ((map['resources'] as List).cast<String>()).input(),
    );
  }
}

