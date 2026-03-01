// ignore_for_file: unused_element, unnecessary_cast


/// Inner error details.
class InnerErrorResponse {
  /// The internal error message or exception dump.
  final String? errordetail;
  /// The exception type.
  final String? exceptiontype;

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
      errordetail: map['errordetail'] == null ? null : map['errordetail'] as String,
      exceptiontype: map['exceptiontype'] == null ? null : map['exceptiontype'] as String,
    );
  }
}

