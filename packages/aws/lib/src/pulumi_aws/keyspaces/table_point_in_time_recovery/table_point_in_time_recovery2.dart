// ignore_for_file: unused_element, unnecessary_cast

class TablePointInTimeRecovery2 {
  /// Valid values: `ENABLED`, `DISABLED`. The default value is `DISABLED`.
  final String? status;

  TablePointInTimeRecovery2({
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory TablePointInTimeRecovery2.fromMap(Map<String, dynamic> map) {
    return TablePointInTimeRecovery2(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
