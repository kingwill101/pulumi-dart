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
      errorCode: (map['errorCode'] as String).input(),
      errorInnerMessage: map['errorInnerMessage'] == null ? null : (map['errorInnerMessage']! as String).input(),
      errorMessage: (map['errorMessage'] as String).input(),
      errorStartTime: (map['errorStartTime'] as String).input(),
    );
  }
}

