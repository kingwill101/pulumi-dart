// ignore_for_file: unused_element, unnecessary_cast


class TablePointInTimeRecovery {
  /// Valid values: `ENABLED`, `DISABLED`. The default value is `DISABLED`.
  final String? status;

  /// Creates a new [TablePointInTimeRecovery].
  /// [status] Valid values: `ENABLED`, `DISABLED`. The default value is `DISABLED`.
  TablePointInTimeRecovery({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory TablePointInTimeRecovery.fromMap(Map<String, dynamic> map) {
    return TablePointInTimeRecovery(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

