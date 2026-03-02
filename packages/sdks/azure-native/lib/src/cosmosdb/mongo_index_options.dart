// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cosmos DB MongoDB collection index options
class MongoIndexOptions {
  /// Expire after seconds
  final pulumi.Input<int>? expireAfterSeconds;
  /// Is unique or not
  final pulumi.Input<bool>? unique;

  /// Creates a new [MongoIndexOptions].
  /// [expireAfterSeconds] Expire after seconds
  /// [unique] Is unique or not
  MongoIndexOptions({
    this.expireAfterSeconds,
    this.unique,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireAfterSeconds': ?expireAfterSeconds,
      'unique': ?unique,
    };
  }

  factory MongoIndexOptions.fromMap(Map<String, dynamic> map) {
    return MongoIndexOptions(
      expireAfterSeconds: map['expireAfterSeconds'] == null ? null : (map['expireAfterSeconds'] as int).input(),
      unique: map['unique'] == null ? null : (map['unique'] as bool).input(),
    );
  }
}

