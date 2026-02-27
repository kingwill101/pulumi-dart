// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_encryption_config_provider/cluster_encryption_config_provider.dart';

class ClusterEncryptionConfig {
  /// Configuration block with provider for encryption. Detailed below.
  final ClusterEncryptionConfigProvider provider;

  /// List of strings with resources to be encrypted. Valid values: `secrets`.
  final List<String> resources;

  ClusterEncryptionConfig({
    required this.provider,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['provider'] = provider.toMap();
    map['resources'] = resources;
    return map;
  }

  factory ClusterEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return ClusterEncryptionConfig(
      provider: ClusterEncryptionConfigProvider.fromMap(
          (map['provider'] as Map).cast<String, dynamic>()),
      resources: (map['resources'] as List).cast<String>(),
    );
  }
}
