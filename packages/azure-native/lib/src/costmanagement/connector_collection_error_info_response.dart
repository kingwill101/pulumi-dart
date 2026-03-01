// ignore_for_file: unused_element, unnecessary_cast


/// Details of any error encountered on last collection attempt
class ConnectorCollectionErrorInfoResponse {
  /// Short error message
  final String errorCode;
  /// External Provider error message
  final String? errorInnerMessage;
  /// Detailed error message
  final String errorMessage;
  /// Time the error started occurring (Last time error occurred in lastRun)
  final String errorStartTime;

  /// Creates a new [ConnectorCollectionErrorInfoResponse].
  /// [errorCode] Short error message
  /// [errorInnerMessage] External Provider error message
  /// [errorMessage] Detailed error message
  /// [errorStartTime] Time the error started occurring (Last time error occurred in lastRun)
  ConnectorCollectionErrorInfoResponse({
    required this.errorCode,
    this.errorInnerMessage,
    required this.errorMessage,
    required this.errorStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'errorInnerMessage': ?errorInnerMessage,
      'errorMessage': errorMessage,
      'errorStartTime': errorStartTime,
    };
  }

  factory ConnectorCollectionErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorCollectionErrorInfoResponse(
      errorCode: map['errorCode'] as String,
      errorInnerMessage: map['errorInnerMessage'] == null ? null : map['errorInnerMessage'] as String,
      errorMessage: map['errorMessage'] as String,
      errorStartTime: map['errorStartTime'] as String,
    );
  }
}

