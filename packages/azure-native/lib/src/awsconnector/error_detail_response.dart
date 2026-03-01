// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ErrorDetail
class ErrorDetailResponse {
  /// <p>The name or code associated with the error.</p>
  final String? errorCode;
  /// <p>A list of key value pairs that provides contextual information about why an error occured.</p>
  final List<dynamic>? errorData;
  /// <p>A message that describes the error.</p>
  final String? errorMessage;

  /// Creates a new [ErrorDetailResponse].
  /// [errorCode] <p>The name or code associated with the error.</p>
  /// [errorData] <p>A list of key value pairs that provides contextual information about why an error occured.</p>
  /// [errorMessage] <p>A message that describes the error.</p>
  ErrorDetailResponse({
    this.errorCode,
    this.errorData,
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorData': ?errorData,
      'errorMessage': ?errorMessage,
    };
  }

  factory ErrorDetailResponse.fromMap(Map<String, dynamic> map) {
    return ErrorDetailResponse(
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorData: map['errorData'] == null ? null : (map['errorData'] as List).cast<dynamic>(),
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
    );
  }
}

