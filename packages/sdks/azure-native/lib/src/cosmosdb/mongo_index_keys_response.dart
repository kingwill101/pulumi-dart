// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cosmos DB MongoDB collection resource object
class MongoIndexKeysResponse {
  /// List of keys for each MongoDB collection in the Azure Cosmos DB service
  final pulumi.Input<List<String>>? keys;

  /// Creates a new [MongoIndexKeysResponse].
  /// [keys] List of keys for each MongoDB collection in the Azure Cosmos DB service
  const MongoIndexKeysResponse({
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys,
    };
  }

  factory MongoIndexKeysResponse.fromMap(Map<String, dynamic> map) {
    return MongoIndexKeysResponse(
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

