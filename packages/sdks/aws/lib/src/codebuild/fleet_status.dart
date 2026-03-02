// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetStatus {
  /// Additional information about a compute fleet.
  final pulumi.Input<String>? context;
  /// Message associated with the status of a compute fleet.
  final pulumi.Input<String>? message;
  /// Status code of the compute fleet.
  final pulumi.Input<String>? statusCode;

  /// Creates a new [FleetStatus].
  /// [context] Additional information about a compute fleet.
  /// [message] Message associated with the status of a compute fleet.
  /// [statusCode] Status code of the compute fleet.
  FleetStatus({
    this.context,
    this.message,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'message': ?message,
      'statusCode': ?statusCode,
    };
  }

  factory FleetStatus.fromMap(Map<String, dynamic> map) {
    return FleetStatus(
      context: map['context'] == null ? null : ((map['context'] as String).input()).input(),
      message: map['message'] == null ? null : ((map['message'] as String).input()).input(),
      statusCode: map['statusCode'] == null ? null : ((map['statusCode'] as String).input()).input(),
    );
  }
}

