// ignore_for_file: unused_element, unnecessary_cast


/// Single status.
class StatusItemResponse {
  /// Status name - e.g. "Active", "Failed".
  final String? statusName;
  /// Status value. e.g. "100", or "100%".
  final String? statusValue;

  /// Creates a new [StatusItemResponse].
  /// [statusName] Status name - e.g. "Active", "Failed".
  /// [statusValue] Status value. e.g. "100", or "100%".
  StatusItemResponse({
    this.statusName,
    this.statusValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusName': ?statusName,
      'statusValue': ?statusValue,
    };
  }

  factory StatusItemResponse.fromMap(Map<String, dynamic> map) {
    return StatusItemResponse(
      statusName: map['statusName'] == null ? null : map['statusName'] as String,
      statusValue: map['statusValue'] == null ? null : map['statusValue'] as String,
    );
  }
}

