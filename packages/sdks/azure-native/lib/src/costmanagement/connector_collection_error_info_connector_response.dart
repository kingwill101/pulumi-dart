// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of any error encountered on last collection attempt
class ConnectorCollectionErrorInfoConnectorResponse {
  /// Short error message
  final pulumi.Input<String> errorCode;
  /// Detailed error message
  final pulumi.Input<String> errorMessage;
  /// Time the error started occurring (Last time error occurred in lastRun)
  final pulumi.Input<String> errorStartTime;

  /// Creates a new [ConnectorCollectionErrorInfoConnectorResponse].
  /// [errorCode] Short error message
  /// [errorMessage] Detailed error message
  /// [errorStartTime] Time the error started occurring (Last time error occurred in lastRun)
  const ConnectorCollectionErrorInfoConnectorResponse({
    required this.errorCode,
    required this.errorMessage,
    required this.errorStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'errorMessage': errorMessage,
      'errorStartTime': errorStartTime,
    };
  }

  factory ConnectorCollectionErrorInfoConnectorResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorCollectionErrorInfoConnectorResponse(
      errorCode: pulumi.Input.fromValue(map['errorCode'] as String),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      errorStartTime: pulumi.Input.fromValue(map['errorStartTime'] as String),
    );
  }
}
