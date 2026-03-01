// ignore_for_file: unused_element, unnecessary_cast

class FleetStatus {
  /// Additional information about a compute fleet.
  final String? context;

  /// Message associated with the status of a compute fleet.
  final String? message;

  /// Status code of the compute fleet.
  final String? statusCode;

  /// Creates a new [FleetStatus].
  /// [context] Additional information about a compute fleet.
  /// [message] Message associated with the status of a compute fleet.
  /// [statusCode] Status code of the compute fleet.
  FleetStatus({this.context, this.message, this.statusCode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'message': ?message,
      'statusCode': ?statusCode,
    };
  }

  factory FleetStatus.fromMap(Map<String, dynamic> map) {
    return FleetStatus(
      context: map['context'] == null ? null : map['context'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      statusCode: map['statusCode'] == null
          ? null
          : map['statusCode'] as String,
    );
  }
}
