// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_encryption_included_path_response.dart';

/// Cosmos DB client encryption policy.
class ClientEncryptionPolicyResponse {
  /// Paths of the item that need encryption along with path-specific settings.
  final List<ClientEncryptionIncludedPathResponse> includedPaths;
  /// Version of the client encryption policy definition. Supported versions are 1 and 2. Version 2 supports id and partition key path encryption.
  final int policyFormatVersion;

  /// Creates a new [ClientEncryptionPolicyResponse].
  /// [includedPaths] Paths of the item that need encryption along with path-specific settings.
  /// [policyFormatVersion] Version of the client encryption policy definition. Supported versions are 1 and 2. Version 2 supports id and partition key path encryption.
  ClientEncryptionPolicyResponse({
    required this.includedPaths,
    required this.policyFormatVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedPaths': pulumi.Input.encodeList<ClientEncryptionIncludedPathResponse, Map<String, dynamic>>(includedPaths, (value) => value.toMap()),
      'policyFormatVersion': policyFormatVersion,
    };
  }

  factory ClientEncryptionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ClientEncryptionPolicyResponse(
      includedPaths: pulumi.Input.decodeList<ClientEncryptionIncludedPathResponse>(map['includedPaths'], (value) => ClientEncryptionIncludedPathResponse.fromMap((value as Map).cast<String, dynamic>())),
      policyFormatVersion: map['policyFormatVersion'] as int,
    );
  }
}

