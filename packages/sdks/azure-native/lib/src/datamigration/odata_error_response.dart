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
  ODataErrorResponse({
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
      code: map['code'] == null ? null : (map['code'] as String).input(),
      details: map['details'] == null ? null : (pulumi.Input.decodeList<ODataErrorResponse>(map['details'], (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
    );
  }
}

