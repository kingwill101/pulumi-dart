// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unique_key_response.dart';

/// The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
class UniqueKeyPolicyResponse {
  /// List of unique keys on that enforces uniqueness constraint on documents in the collection in the Azure Cosmos DB service.
  final pulumi.Input<List<UniqueKeyResponse>>? uniqueKeys;

  /// Creates a new [UniqueKeyPolicyResponse].
  /// [uniqueKeys] List of unique keys on that enforces uniqueness constraint on documents in the collection in the Azure Cosmos DB service.
  const UniqueKeyPolicyResponse({
    this.uniqueKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uniqueKeys': ?pulumi.Input.mapOptionalInputValue<List<UniqueKeyResponse>, List<Map<String, dynamic>>>(uniqueKeys, (value) => pulumi.Input.encodeList<UniqueKeyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UniqueKeyPolicyResponse.fromMap(Map<String, dynamic> map) {
    return UniqueKeyPolicyResponse(
      uniqueKeys: (() { final guardedValue = map['uniqueKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UniqueKeyResponse>(guardedValue, (value) => UniqueKeyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
