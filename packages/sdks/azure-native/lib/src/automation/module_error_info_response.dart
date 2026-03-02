// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of the module error info type.
class ModuleErrorInfoResponse {
  /// Gets the error code.
  final pulumi.Input<String>? code;
  /// Gets the error message.
  final pulumi.Input<String>? message;

  /// Creates a new [ModuleErrorInfoResponse].
  /// [code] Gets the error code.
  /// [message] Gets the error message.
  ModuleErrorInfoResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory ModuleErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return ModuleErrorInfoResponse(
      code: map['code'] == null ? null : (map['code'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
    );
  }
}

