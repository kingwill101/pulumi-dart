// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the error details if the background copy of a resource created via the CopyStart operation fails.
class CopyCompletionError {
  /// Indicates the error code if the background copy of a resource created via the CopyStart operation fails.
  final pulumi.Input<dynamic> errorCode;
  /// Indicates the error message if the background copy of a resource created via the CopyStart operation fails.
  final pulumi.Input<String> errorMessage;

  /// Creates a new [CopyCompletionError].
  /// [errorCode] Indicates the error code if the background copy of a resource created via the CopyStart operation fails.
  /// [errorMessage] Indicates the error message if the background copy of a resource created via the CopyStart operation fails.
  const CopyCompletionError({
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
      errorCode: pulumi.Input.fromValue(map['errorCode']),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
    );
  }
}
