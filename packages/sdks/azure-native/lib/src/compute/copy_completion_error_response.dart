// ignore_for_file: unused_element, unnecessary_cast


/// Indicates the error details if the background copy of a resource created via the CopyStart operation fails.
class CopyCompletionErrorResponse {
  /// Indicates the error code if the background copy of a resource created via the CopyStart operation fails.
  final String errorCode;
  /// Indicates the error message if the background copy of a resource created via the CopyStart operation fails.
  final String errorMessage;

  /// Creates a new [CopyCompletionErrorResponse].
  /// [errorCode] Indicates the error code if the background copy of a resource created via the CopyStart operation fails.
  /// [errorMessage] Indicates the error message if the background copy of a resource created via the CopyStart operation fails.
  CopyCompletionErrorResponse({
    required this.errorCode,
    required this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'errorMessage': errorMessage,
    };
  }

  factory CopyCompletionErrorResponse.fromMap(Map<String, dynamic> map) {
    return CopyCompletionErrorResponse(
      errorCode: map['errorCode'] as String,
      errorMessage: map['errorMessage'] as String,
    );
  }
}

