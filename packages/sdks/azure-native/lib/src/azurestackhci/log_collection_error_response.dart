// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Log Collection Error details of the cluster.
class LogCollectionErrorResponse {
  /// Error Code of the log collection
  final pulumi.Input<String> errorCode;
  /// Error Message of the log collection
  final pulumi.Input<String> errorMessage;

  /// Creates a new [LogCollectionErrorResponse].
  /// [errorCode] Error Code of the log collection
  /// [errorMessage] Error Message of the log collection
  LogCollectionErrorResponse({
    required this.errorCode,
    required this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'errorMessage': errorMessage,
    };
  }

  factory LogCollectionErrorResponse.fromMap(Map<String, dynamic> map) {
    return LogCollectionErrorResponse(
      errorCode: pulumi.Input.fromValue(map['errorCode'] as String),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
    );
  }
}

