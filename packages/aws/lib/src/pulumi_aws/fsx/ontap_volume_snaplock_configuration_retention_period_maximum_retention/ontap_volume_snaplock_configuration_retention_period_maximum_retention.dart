// ignore_for_file: unused_element, unnecessary_cast

class OntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention {
  /// The type of time for the retention period of an FSx for ONTAP SnapLock volume. Set it to one of the valid types. If you set it to `INFINITE`, the files are retained forever. If you set it to `UNSPECIFIED`, the files are retained until you set an explicit retention period. Valid values: `SECONDS`, `MINUTES`, `HOURS`, `DAYS`, `MONTHS`, `YEARS`, `INFINITE`, `UNSPECIFIED`.
  final String? type;

  /// The amount of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume.
  final int? value;

  OntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory OntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention.fromMap(
      Map<String, dynamic> map) {
    return OntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as int,
    );
  }
}
