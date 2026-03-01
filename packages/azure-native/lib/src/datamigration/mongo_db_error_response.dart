// ignore_for_file: unused_element, unnecessary_cast


/// Describes an error or warning that occurred during a MongoDB migration
class MongoDbErrorResponse {
  /// The non-localized, machine-readable code that describes the error or warning
  final String? code;
  /// The number of times the error or warning has occurred
  final int? count;
  /// The localized, human-readable message that describes the error or warning
  final String? message;
  /// The type of error or warning
  final String? type;

  /// Creates a new [MongoDbErrorResponse].
  /// [code] The non-localized, machine-readable code that describes the error or warning
  /// [count] The number of times the error or warning has occurred
  /// [message] The localized, human-readable message that describes the error or warning
  /// [type] The type of error or warning
  MongoDbErrorResponse({
    this.code,
    this.count,
    this.message,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'count': ?count,
      'message': ?message,
      'type': ?type,
    };
  }

  factory MongoDbErrorResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbErrorResponse(
      code: map['code'] == null ? null : map['code'] as String,
      count: map['count'] == null ? null : map['count'] as int,
      message: map['message'] == null ? null : map['message'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

