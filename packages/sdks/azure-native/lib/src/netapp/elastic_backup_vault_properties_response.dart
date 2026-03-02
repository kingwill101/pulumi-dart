// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Elastic Backup Vault properties
class ElasticBackupVaultPropertiesResponse {
  /// Azure lifecycle management.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ElasticBackupVaultPropertiesResponse].
  /// [provisioningState] Azure lifecycle management.
  ElasticBackupVaultPropertiesResponse({
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
    };
  }

  factory ElasticBackupVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticBackupVaultPropertiesResponse(
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

