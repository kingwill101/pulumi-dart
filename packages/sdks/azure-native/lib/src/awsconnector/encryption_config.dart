// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider.dart';

/// Definition of EncryptionConfig
class EncryptionConfig {
  /// <p>Key Management Service (KMS) key. Either the ARN or the alias can be used.</p>
  final pulumi.Input<Provider>? provider;
  /// <p>Specifies the resources to be encrypted. The only supported value is <code>secrets</code>.</p>
  final pulumi.Input<List<String>>? resources;

  /// Creates a new [EncryptionConfig].
  /// [provider] <p>Key Management Service (KMS) key. Either the ARN or the alias can be used.</p>
  /// [resources] <p>Specifies the resources to be encrypted. The only supported value is <code>secrets</code>.</p>
  EncryptionConfig({
    this.provider,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': ?pulumi.Input.mapOptionalInputValue<Provider, Map<String, dynamic>>(provider, (value) => value.toMap()),
      'resources': ?resources,
    };
  }

  factory EncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig(
      provider: map['provider'] == null ? null : (Provider.fromMap((map['provider']! as Map).cast<String, dynamic>())).input(),
      resources: map['resources'] == null ? null : ((map['resources']! as List).cast<String>()).input(),
    );
  }
}

