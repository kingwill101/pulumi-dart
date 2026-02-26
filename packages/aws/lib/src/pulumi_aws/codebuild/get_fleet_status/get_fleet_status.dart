// ignore_for_file: unused_element, unnecessary_cast

class GetFleetStatus {
  /// Additional information about a compute fleet.
  final String context;

  /// Message associated with the status of a compute fleet.
  final String message;

  /// Status code of the compute fleet.
  final String statusCode;

  GetFleetStatus({
    required this.context,
    required this.message,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['context'] = context;
    map['message'] = message;
    map['statusCode'] = statusCode;
    return map;
  }

  factory GetFleetStatus.fromMap(Map<String, dynamic> map) {
    return GetFleetStatus(
      context: map['context'] as String,
      message: map['message'] as String,
      statusCode: map['statusCode'] as String,
    );
  }
}
