// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Inner Error
class InnerErrorResponse {
  /// Any Key value pairs that can be provided to the client for additional  verbose information.
  final pulumi.Input<Map<String, String>>? additionalInfo;
  /// Unique code for this error
  final pulumi.Input<String>? code;
  /// Child Inner Error, to allow Nesting.
  final pulumi.Input<InnerErrorResponse>? embeddedInnerError;

  /// Creates a new [InnerErrorResponse].
  /// [additionalInfo] Any Key value pairs that can be provided to the client for additional  verbose information.
  /// [code] Unique code for this error
  /// [embeddedInnerError] Child Inner Error, to allow Nesting.
  const InnerErrorResponse({
    this.additionalInfo,
    this.code,
    this.embeddedInnerError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': ?additionalInfo,
      'code': ?code,
      'embeddedInnerError': ?pulumi.Input.mapOptionalInputValue<InnerErrorResponse, Map<String, dynamic>>(embeddedInnerError, (value) => value.toMap()),
    };
  }

  factory InnerErrorResponse.fromMap(Map<String, dynamic> map) {
    return InnerErrorResponse(
      additionalInfo: (() { final guardedValue = map['additionalInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      embeddedInnerError: (() { final guardedValue = map['embeddedInnerError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InnerErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

