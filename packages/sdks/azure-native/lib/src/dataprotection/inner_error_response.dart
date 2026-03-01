// ignore_for_file: unused_element, unnecessary_cast


/// Inner Error
class InnerErrorResponse {
  /// Any Key value pairs that can be provided to the client for additional  verbose information.
  final Map<String, String>? additionalInfo;
  /// Unique code for this error
  final String? code;
  /// Child Inner Error, to allow Nesting.
  final InnerErrorResponse? embeddedInnerError;

  /// Creates a new [InnerErrorResponse].
  /// [additionalInfo] Any Key value pairs that can be provided to the client for additional  verbose information.
  /// [code] Unique code for this error
  /// [embeddedInnerError] Child Inner Error, to allow Nesting.
  InnerErrorResponse({
    this.additionalInfo,
    this.code,
    this.embeddedInnerError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': ?additionalInfo,
      'code': ?code,
      'embeddedInnerError': ?embeddedInnerError == null ? null : embeddedInnerError!.toMap(),
    };
  }

  factory InnerErrorResponse.fromMap(Map<String, dynamic> map) {
    return InnerErrorResponse(
      additionalInfo: map['additionalInfo'] == null ? null : (map['additionalInfo'] as Map).cast<String, String>(),
      code: map['code'] == null ? null : map['code'] as String,
      embeddedInnerError: map['embeddedInnerError'] == null ? null : InnerErrorResponse.fromMap((map['embeddedInnerError'] as Map).cast<String, dynamic>()),
    );
  }
}

