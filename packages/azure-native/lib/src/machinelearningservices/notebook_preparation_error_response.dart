// ignore_for_file: unused_element, unnecessary_cast


class NotebookPreparationErrorResponse {
  final String? errorMessage;
  final int? statusCode;

  /// Creates a new [NotebookPreparationErrorResponse].
  /// [errorMessage] Optional.
  /// [statusCode] Optional.
  NotebookPreparationErrorResponse({
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
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      statusCode: map['statusCode'] == null ? null : map['statusCode'] as int,
    );
  }
}

