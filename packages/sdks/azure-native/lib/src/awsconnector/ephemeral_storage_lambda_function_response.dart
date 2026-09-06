// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EphemeralStorage
class EphemeralStorageLambdaFunctionResponse {
  /// The size of the function's ``/tmp`` directory.
  final pulumi.Input<int?>? size;

  /// Creates a new [EphemeralStorageLambdaFunctionResponse].
  /// [size] The size of the function's ``/tmp`` directory.
  const EphemeralStorageLambdaFunctionResponse({
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
    };
  }

  factory EphemeralStorageLambdaFunctionResponse.fromMap(Map<String, dynamic> map) {
    return EphemeralStorageLambdaFunctionResponse(
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
