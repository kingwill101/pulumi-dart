// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of the module error info type.
class ModuleErrorInfoResponse {
  /// Gets or sets the error code.
  final pulumi.Input<String?>? code;
  /// Gets or sets the error message.
  final pulumi.Input<String?>? message;

  /// Creates a new [ModuleErrorInfoResponse].
  /// [code] Gets or sets the error code.
  /// [message] Gets or sets the error message.
  const ModuleErrorInfoResponse({
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
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
