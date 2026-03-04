// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an error or warning that occurred during a MongoDB migration
class MongoDbErrorResponse {
  /// The non-localized, machine-readable code that describes the error or warning
  final pulumi.Input<String>? code;

  /// The number of times the error or warning has occurred
  final pulumi.Input<int>? count;

  /// The localized, human-readable message that describes the error or warning
  final pulumi.Input<String>? message;

  /// The type of error or warning
  final pulumi.Input<String>? type;

  /// Creates a new [MongoDbErrorResponse].
  /// [code] The non-localized, machine-readable code that describes the error or warning
  /// [count] The number of times the error or warning has occurred
  /// [message] The localized, human-readable message that describes the error or warning
  /// [type] The type of error or warning
  MongoDbErrorResponse({this.code, this.count, this.message, this.type});

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
      code: (() {
        final guardedValue = map['code'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
