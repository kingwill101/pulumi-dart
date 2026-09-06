// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The error if any from the operation.
class VirtualNetworkPropertiesResponseError {
  /// The error code from the operation.
  final pulumi.Input<String?>? code;
  /// The error message from the operation.
  final pulumi.Input<String?>? message;

  /// Creates a new [VirtualNetworkPropertiesResponseError].
  /// [code] The error code from the operation.
  /// [message] The error message from the operation.
  const VirtualNetworkPropertiesResponseError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory VirtualNetworkPropertiesResponseError.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesResponseError(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
