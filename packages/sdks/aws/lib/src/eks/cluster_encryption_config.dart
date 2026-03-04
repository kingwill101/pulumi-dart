// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_encryption_config_provider.dart';

class ClusterEncryptionConfig {
  /// Configuration block with provider for encryption. Detailed below.
  final pulumi.Input<ClusterEncryptionConfigProvider> provider;

  /// List of strings with resources to be encrypted. Valid values: `secrets`.
  final pulumi.Input<List<String>> resources;

  /// Creates a new [ClusterEncryptionConfig].
  /// [provider] Configuration block with provider for encryption. Detailed below.
  /// [resources] List of strings with resources to be encrypted. Valid values: `secrets`.
  ClusterEncryptionConfig({required this.provider, required this.resources});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider':
          pulumi.Input.mapInputValue<
            ClusterEncryptionConfigProvider,
            Map<String, dynamic>
          >(provider, (value) => value.toMap()),
      'resources': resources,
    };
  }

  factory ClusterEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return ClusterEncryptionConfig(
      provider: pulumi.Input.fromValue(
        ClusterEncryptionConfigProvider.fromMap(
          (map['provider']! as Map).cast<String, dynamic>(),
        ),
      ),
      resources: pulumi.Input.fromValue(
        (map['resources'] as List).cast<String>(),
      ),
    );
  }
}
