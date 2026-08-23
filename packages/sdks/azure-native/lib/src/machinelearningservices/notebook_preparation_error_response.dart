// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotebookPreparationErrorResponse {
  final pulumi.Input<String>? errorMessage;
  final pulumi.Input<int>? statusCode;

  /// Creates a new [NotebookPreparationErrorResponse].
  /// [errorMessage] Optional.
  /// [statusCode] Optional.
  const NotebookPreparationErrorResponse({
    this.errorMessage,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': ?errorMessage,
      'statusCode': ?statusCode,
    };
  }

  factory NotebookPreparationErrorResponse.fromMap(Map<String, dynamic> map) {
    return NotebookPreparationErrorResponse(
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
