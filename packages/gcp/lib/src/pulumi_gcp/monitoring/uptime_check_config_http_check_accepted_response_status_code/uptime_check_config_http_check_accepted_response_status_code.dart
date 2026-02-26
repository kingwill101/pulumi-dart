// ignore_for_file: unused_element, unnecessary_cast

class UptimeCheckConfigHttpCheckAcceptedResponseStatusCode {
  /// A class of status codes to accept.
  /// Possible values are: `STATUS_CLASS_1XX`, `STATUS_CLASS_2XX`, `STATUS_CLASS_3XX`, `STATUS_CLASS_4XX`, `STATUS_CLASS_5XX`, `STATUS_CLASS_ANY`.
  final String? statusClass;

  /// A status code to accept.
  final int? statusValue;

  UptimeCheckConfigHttpCheckAcceptedResponseStatusCode({
    this.statusClass,
    this.statusValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final statusClassValue = statusClass;
    if (statusClassValue != null) {
      map['statusClass'] = statusClassValue;
    }
    final statusValueValue = statusValue;
    if (statusValueValue != null) {
      map['statusValue'] = statusValueValue;
    }
    return map;
  }

  factory UptimeCheckConfigHttpCheckAcceptedResponseStatusCode.fromMap(
      Map<String, dynamic> map) {
    return UptimeCheckConfigHttpCheckAcceptedResponseStatusCode(
      statusClass:
          map['statusClass'] == null ? null : map['statusClass'] as String,
      statusValue:
          map['statusValue'] == null ? null : map['statusValue'] as int,
    );
  }
}
