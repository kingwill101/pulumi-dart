// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cosmos DB MongoDB collection index options
class MongoIndexOptionsResponse {
  /// Expire after seconds
  final pulumi.Input<int>? expireAfterSeconds;
  /// Is unique or not
  final pulumi.Input<bool>? unique;

  /// Creates a new [MongoIndexOptionsResponse].
  /// [expireAfterSeconds] Expire after seconds
  /// [unique] Is unique or not
  const MongoIndexOptionsResponse({
    this.expireAfterSeconds,
    this.unique,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireAfterSeconds': ?expireAfterSeconds,
      'unique': ?unique,
    };
  }

  factory MongoIndexOptionsResponse.fromMap(Map<String, dynamic> map) {
    return MongoIndexOptionsResponse(
      expireAfterSeconds: (() { final guardedValue = map['expireAfterSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      unique: (() { final guardedValue = map['unique']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

