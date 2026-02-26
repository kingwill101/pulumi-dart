// ignore_for_file: unused_element, unnecessary_cast

class WorkstationClusterCondition {
  /// (Output)
  /// The status code, which should be an enum value of google.rpc.Code.
  final int? code;

  /// (Output)
  /// A list of messages that carry the error details.
  final List<Map<String, String>>? details;

  /// (Output)
  /// Human readable message indicating details about the current status.
  final String? message;

  WorkstationClusterCondition({
    this.code,
    this.details,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final detailsValue = details;
    if (detailsValue != null) {
      map['details'] = detailsValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory WorkstationClusterCondition.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterCondition(
      code: map['code'] == null ? null : map['code'] as int,
      details: map['details'] == null
          ? null
          : (map['details'] as List).cast<Map<String, String>>(),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
