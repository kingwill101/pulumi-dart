// ignore_for_file: unused_element, unnecessary_cast


/// Indicates the error details if the background copy of a resource created via the CopyStart operation fails.
class CopyCompletionError {
  /// Indicates the error code if the background copy of a resource created via the CopyStart operation fails.
  final String errorCode;
  /// Indicates the error message if the background copy of a resource created via the CopyStart operation fails.
  final String errorMessage;

  /// Creates a new [CopyCompletionError].
  /// [errorCode] Indicates the error code if the background copy of a resource created via the CopyStart operation fails.
  /// [errorMessage] Indicates the error message if the background copy of a resource created via the CopyStart operation fails.
  CopyCompletionError({
    required this.errorCode,
    required this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'errorMessage': errorMessage,
    };
  }

  factory CopyCompletionError.fromMap(Map<String, dynamic> map) {
    return CopyCompletionError(
      errorCode: map['errorCode'] as String,
      errorMessage: map['errorMessage'] as String,
    );
  }
}

