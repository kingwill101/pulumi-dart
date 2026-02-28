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
  FleetStatus({
    this.context,
    this.message,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contextValue = context;
    if (contextValue != null) {
      map['context'] = contextValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    final statusCodeValue = statusCode;
    if (statusCodeValue != null) {
      map['statusCode'] = statusCodeValue;
    }
    return map;
  }

  factory FleetStatus.fromMap(Map<String, dynamic> map) {
    return FleetStatus(
      context: map['context'] == null ? null : map['context'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      statusCode:
          map['statusCode'] == null ? null : map['statusCode'] as String,
    );
  }
}
