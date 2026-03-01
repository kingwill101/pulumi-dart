// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An error that occurred when autoscaling a pool.
class AutoScaleRunErrorResponse {
  /// An identifier for the error. Codes are invariant and are intended to be consumed programmatically.
  final String code;
  /// Additional details about the error.
  final List<AutoScaleRunErrorResponse>? details;
  /// A message describing the error, intended to be suitable for display in a user interface.
  final String message;

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
      'details': ?details == null ? null : pulumi.Input.encodeList<AutoScaleRunErrorResponse, Map<String, dynamic>>(details!, (value) => value.toMap()),
      'message': message,
    };
  }

  factory AutoScaleRunErrorResponse.fromMap(Map<String, dynamic> map) {
    return AutoScaleRunErrorResponse(
      code: map['code'] as String,
      details: map['details'] == null ? null : pulumi.Input.decodeList<AutoScaleRunErrorResponse>(map['details'], (value) => AutoScaleRunErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
    );
  }
}

