// ignore_for_file: unused_element, unnecessary_cast


/// Cosmos DB MongoDB collection index options
class MongoIndexOptionsResponse {
  /// Expire after seconds
  final int? expireAfterSeconds;
  /// Is unique or not
  final bool? unique;

  /// Creates a new [MongoIndexOptionsResponse].
  /// [expireAfterSeconds] Expire after seconds
  /// [unique] Is unique or not
  MongoIndexOptionsResponse({
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
      expireAfterSeconds: map['expireAfterSeconds'] == null ? null : map['expireAfterSeconds'] as int,
      unique: map['unique'] == null ? null : map['unique'] as bool,
    );
  }
}

