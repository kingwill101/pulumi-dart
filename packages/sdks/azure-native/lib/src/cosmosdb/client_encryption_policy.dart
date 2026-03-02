// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_encryption_included_path.dart';

/// Cosmos DB client encryption policy.
class ClientEncryptionPolicy {
  /// Paths of the item that need encryption along with path-specific settings.
  final pulumi.Input<List<ClientEncryptionIncludedPath>> includedPaths;
  /// Version of the client encryption policy definition. Supported versions are 1 and 2. Version 2 supports id and partition key path encryption.
  final pulumi.Input<int> policyFormatVersion;

  /// Creates a new [ClientEncryptionPolicy].
  /// [includedPaths] Paths of the item that need encryption along with path-specific settings.
  /// [policyFormatVersion] Version of the client encryption policy definition. Supported versions are 1 and 2. Version 2 supports id and partition key path encryption.
  ClientEncryptionPolicy({
    required this.includedPaths,
    required this.policyFormatVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedPaths': pulumi.Input.mapInputValue<List<ClientEncryptionIncludedPath>, List<Map<String, dynamic>>>(includedPaths, (value) => pulumi.Input.encodeList<ClientEncryptionIncludedPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyFormatVersion': policyFormatVersion,
    };
  }

  factory ClientEncryptionPolicy.fromMap(Map<String, dynamic> map) {
    return ClientEncryptionPolicy(
      includedPaths: (pulumi.Input.decodeList<ClientEncryptionIncludedPath>(map['includedPaths'], (value) => ClientEncryptionIncludedPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policyFormatVersion: (map['policyFormatVersion'] as int).input(),
    );
  }
}

