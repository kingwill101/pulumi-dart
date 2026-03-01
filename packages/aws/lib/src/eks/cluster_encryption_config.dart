// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_encryption_config_provider.dart';

class ClusterEncryptionConfig {
  /// Configuration block with provider for encryption. Detailed below.
  final ClusterEncryptionConfigProvider provider;

  /// List of strings with resources to be encrypted. Valid values: `secrets`.
  final List<String> resources;

  /// Creates a new [ClusterEncryptionConfig].
  /// [provider] Configuration block with provider for encryption. Detailed below.
  /// [resources] List of strings with resources to be encrypted. Valid values: `secrets`.
  ClusterEncryptionConfig({required this.provider, required this.resources});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': provider.toMap(),
      'resources': resources,
    };
  }

  factory ClusterEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return ClusterEncryptionConfig(
      provider: ClusterEncryptionConfigProvider.fromMap(
        (map['provider'] as Map).cast<String, dynamic>(),
      ),
      resources: (map['resources'] as List).cast<String>(),
    );
  }
}
