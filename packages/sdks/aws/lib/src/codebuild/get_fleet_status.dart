// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFleetStatus {
  /// Additional information about a compute fleet.
  final pulumi.Input<String> context;

  /// Message associated with the status of a compute fleet.
  final pulumi.Input<String> message;

  /// Status code of the compute fleet.
  final pulumi.Input<String> statusCode;

  /// Creates a new [GetFleetStatus].
  /// [context] Additional information about a compute fleet.
  /// [message] Message associated with the status of a compute fleet.
  /// [statusCode] Status code of the compute fleet.
  GetFleetStatus({
    required this.context,
    required this.message,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': context,
      'message': message,
      'statusCode': statusCode,
    };
  }

  factory GetFleetStatus.fromMap(Map<String, dynamic> map) {
    return GetFleetStatus(
      context: pulumi.Input.fromValue(map['context'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as String),
    );
  }
}
