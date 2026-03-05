// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ARM error code and error message associated with the impact
class ErrorDetailPropertiesResponse {
  /// ARM Error code associated with the impact.
  final pulumi.Input<String>? errorCode;
  /// ARM Error Message associated with the impact
  final pulumi.Input<String>? errorMessage;

  /// Creates a new [ErrorDetailPropertiesResponse].
  /// [errorCode] ARM Error code associated with the impact.
  /// [errorMessage] ARM Error Message associated with the impact
  ErrorDetailPropertiesResponse({
    this.errorCode,
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
    };
  }

  factory ErrorDetailPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ErrorDetailPropertiesResponse(
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

