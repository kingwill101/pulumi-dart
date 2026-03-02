// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Inner error details.
class InnerErrorResponse {
  /// The internal error message or exception dump.
  final pulumi.Input<String>? errordetail;
  /// The exception type.
  final pulumi.Input<String>? exceptiontype;

  /// Creates a new [InnerErrorResponse].
  /// [errordetail] The internal error message or exception dump.
  /// [exceptiontype] The exception type.
  InnerErrorResponse({
    this.errordetail,
    this.exceptiontype,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errordetail': ?errordetail,
      'exceptiontype': ?exceptiontype,
    };
  }

  factory InnerErrorResponse.fromMap(Map<String, dynamic> map) {
    return InnerErrorResponse(
      errordetail: map['errordetail'] == null ? null : (map['errordetail']! as String).input(),
      exceptiontype: map['exceptiontype'] == null ? null : (map['exceptiontype']! as String).input(),
    );
  }
}

