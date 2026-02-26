// ignore_for_file: unused_element, unnecessary_cast

class PhoneNumberStatus {
  /// The status message.
  final String? message;

  /// The status of the phone number. Valid Values: `CLAIMED` | `IN_PROGRESS` | `FAILED`.
  final String? status;

  PhoneNumberStatus({
    this.message,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory PhoneNumberStatus.fromMap(Map<String, dynamic> map) {
    return PhoneNumberStatus(
      message: map['message'] == null ? null : map['message'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
