// ignore_for_file: unused_element, unnecessary_cast

class TablePointInTimeRecoveryKeyspaces {
  /// Valid values: `ENABLED`, `DISABLED`. The default value is `DISABLED`.
  final String? status;

  TablePointInTimeRecoveryKeyspaces({
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

  factory TablePointInTimeRecoveryKeyspaces.fromMap(Map<String, dynamic> map) {
    return TablePointInTimeRecoveryKeyspaces(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
