// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_index_keys_response.dart';
import 'mongo_index_options_response.dart';

/// Cosmos DB MongoDB collection index key
class MongoIndexResponse {
  /// Cosmos DB MongoDB collection index keys
  final pulumi.Input<MongoIndexKeysResponse?>? key;
  /// Cosmos DB MongoDB collection index key options
  final pulumi.Input<MongoIndexOptionsResponse?>? options;

  /// Creates a new [MongoIndexResponse].
  /// [key] Cosmos DB MongoDB collection index keys
  /// [options] Cosmos DB MongoDB collection index key options
  const MongoIndexResponse({
    this.key,
    this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?pulumi.Input.mapOptionalInputValue<MongoIndexKeysResponse, Map<String, dynamic>>(key, (value) => value.toMap()),
      'options': ?pulumi.Input.mapOptionalInputValue<MongoIndexOptionsResponse, Map<String, dynamic>>(options, (value) => value.toMap()),
    };
  }

  factory MongoIndexResponse.fromMap(Map<String, dynamic> map) {
    return MongoIndexResponse(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoIndexKeysResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoIndexOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
