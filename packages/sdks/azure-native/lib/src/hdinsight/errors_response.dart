// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The error message associated with the cluster creation.
class ErrorsResponse {
  /// The error code.
  final pulumi.Input<String>? code;

  /// The error message.
  final pulumi.Input<String>? message;

  /// Creates a new [ErrorsResponse].
  /// [code] The error code.
  /// [message] The error message.
  ErrorsResponse({this.code, this.message});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': ?code, 'message': ?message};
  }

  factory ErrorsResponse.fromMap(Map<String, dynamic> map) {
    return ErrorsResponse(
      code: (() {
        final guardedValue = map['code'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
