// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unique_key_response.dart';

/// The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
class UniqueKeyPolicyResponse {
  /// List of unique keys on that enforces uniqueness constraint on documents in the collection in the Azure Cosmos DB service.
  final List<UniqueKeyResponse>? uniqueKeys;

  /// Creates a new [UniqueKeyPolicyResponse].
  /// [uniqueKeys] List of unique keys on that enforces uniqueness constraint on documents in the collection in the Azure Cosmos DB service.
  UniqueKeyPolicyResponse({
    this.uniqueKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uniqueKeys': ?uniqueKeys == null ? null : pulumi.Input.encodeList<UniqueKeyResponse, Map<String, dynamic>>(uniqueKeys!, (value) => value.toMap()),
    };
  }

  factory UniqueKeyPolicyResponse.fromMap(Map<String, dynamic> map) {
    return UniqueKeyPolicyResponse(
      uniqueKeys: map['uniqueKeys'] == null ? null : pulumi.Input.decodeList<UniqueKeyResponse>(map['uniqueKeys'], (value) => UniqueKeyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

