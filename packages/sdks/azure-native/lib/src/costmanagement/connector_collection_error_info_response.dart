// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of any error encountered on last collection attempt
class ConnectorCollectionErrorInfoResponse {
  /// Short error message
  final pulumi.Input<String> errorCode;
  /// External Provider error message
  final pulumi.Input<String>? errorInnerMessage;
  /// Detailed error message
  final pulumi.Input<String> errorMessage;
  /// Time the error started occurring (Last time error occurred in lastRun)
  final pulumi.Input<String> errorStartTime;

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
      errorCode: pulumi.Input.fromValue(map['errorCode'] as String),
      errorInnerMessage: (() { final guardedValue = map['errorInnerMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      errorStartTime: pulumi.Input.fromValue(map['errorStartTime'] as String),
    );
  }
}

