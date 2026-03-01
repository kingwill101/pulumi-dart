// ignore_for_file: unused_element, unnecessary_cast

class OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention {
  /// The type of time for the retention period of an FSx for ONTAP SnapLock volume. Set it to one of the valid types. If you set it to `INFINITE`, the files are retained forever. If you set it to `UNSPECIFIED`, the files are retained until you set an explicit retention period. Valid values: `SECONDS`, `MINUTES`, `HOURS`, `DAYS`, `MONTHS`, `YEARS`, `INFINITE`, `UNSPECIFIED`.
  final String? type;

  /// The amount of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume.
  final int? value;

  /// Creates a new [OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention].
  /// [type] The type of time for the retention period of an FSx for ONTAP SnapLock volume. Set it to one of the valid types. If you set it to `INFINITE`, the files are retained forever. If you set it to `UNSPECIFIED`, the files are retained until you set an explicit retention period. Valid values: `SECONDS`, `MINUTES`, `HOURS`, `DAYS`, `MONTHS`, `YEARS`, `INFINITE`, `UNSPECIFIED`.
  /// [value] The amount of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume.
  OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type, 'value': ?value};
  }

  factory OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention.fromMap(
    Map<String, dynamic> map,
  ) {
    return OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as int,
    );
  }
}
