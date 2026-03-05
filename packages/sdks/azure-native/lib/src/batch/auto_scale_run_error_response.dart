// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An error that occurred when autoscaling a pool.
class AutoScaleRunErrorResponse {
  /// An identifier for the error. Codes are invariant and are intended to be consumed programmatically.
  final pulumi.Input<String> code;
  /// Additional details about the error.
  final pulumi.Input<List<AutoScaleRunErrorResponse>>? details;
  /// A message describing the error, intended to be suitable for display in a user interface.
  final pulumi.Input<String> message;

  /// Creates a new [AutoScaleRunErrorResponse].
  /// [code] An identifier for the error. Codes are invariant and are intended to be consumed programmatically.
  /// [details] Additional details about the error.
  /// [message] A message describing the error, intended to be suitable for display in a user interface.
  AutoScaleRunErrorResponse({
    required this.code,
    this.details,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'details': ?pulumi.Input.mapOptionalInputValue<List<AutoScaleRunErrorResponse>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<AutoScaleRunErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': message,
    };
  }

  factory AutoScaleRunErrorResponse.fromMap(Map<String, dynamic> map) {
    return AutoScaleRunErrorResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoScaleRunErrorResponse>(guardedValue, (value) => AutoScaleRunErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}

