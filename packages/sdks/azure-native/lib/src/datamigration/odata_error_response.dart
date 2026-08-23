// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error information in OData format.
class ODataErrorResponse {
  /// The machine-readable description of the error, such as 'InvalidRequest' or 'InternalServerError'
  final pulumi.Input<String>? code;
  /// Inner errors that caused this error
  final pulumi.Input<List<ODataErrorResponse>>? details;
  /// The human-readable description of the error
  final pulumi.Input<String>? message;

  /// Creates a new [ODataErrorResponse].
  /// [code] The machine-readable description of the error, such as 'InvalidRequest' or 'InternalServerError'
  /// [details] Inner errors that caused this error
  /// [message] The human-readable description of the error
  const ODataErrorResponse({
    this.code,
    this.details,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'details': ?pulumi.Input.mapOptionalInputValue<List<ODataErrorResponse>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': ?message,
    };
  }

  factory ODataErrorResponse.fromMap(Map<String, dynamic> map) {
    return ODataErrorResponse(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ODataErrorResponse>(guardedValue, (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
