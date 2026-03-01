// ignore_for_file: unused_element, unnecessary_cast

import 'provider.dart';

/// Definition of EncryptionConfig
class EncryptionConfig {
  /// <p>Key Management Service (KMS) key. Either the ARN or the alias can be used.</p>
  final Provider? provider;
  /// <p>Specifies the resources to be encrypted. The only supported value is <code>secrets</code>.</p>
  final List<String>? resources;

  /// Creates a new [EncryptionConfig].
  /// [provider] <p>Key Management Service (KMS) key. Either the ARN or the alias can be used.</p>
  /// [resources] <p>Specifies the resources to be encrypted. The only supported value is <code>secrets</code>.</p>
  EncryptionConfig({
    this.provider,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': ?provider == null ? null : provider!.toMap(),
      'resources': ?resources,
    };
  }

  factory EncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig(
      provider: map['provider'] == null ? null : Provider.fromMap((map['provider'] as Map).cast<String, dynamic>()),
      resources: map['resources'] == null ? null : (map['resources'] as List).cast<String>(),
    );
  }
}

