// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of the package error info type.
class PackageErrorInfoResponse {
  /// Package import error code.
  final pulumi.Input<String>? code;
  /// Package import error message.
  final pulumi.Input<String>? message;

  /// Creates a new [PackageErrorInfoResponse].
  /// [code] Package import error code.
  /// [message] Package import error message.
  PackageErrorInfoResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory PackageErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return PackageErrorInfoResponse(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

