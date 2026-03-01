// ignore_for_file: unused_element, unnecessary_cast


class OntapVolumeSnaplockConfigurationAutocommitPeriod {
  /// The type of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume. Setting this value to `NONE` disables autocommit. Valid values: `MINUTES`, `HOURS`, `DAYS`, `MONTHS`, `YEARS`, `NONE`.
  final String? type;
  /// The amount of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume.
  final int? value;

  /// Creates a new [OntapVolumeSnaplockConfigurationAutocommitPeriod].
  /// [type] The type of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume. Setting this value to `NONE` disables autocommit. Valid values: `MINUTES`, `HOURS`, `DAYS`, `MONTHS`, `YEARS`, `NONE`.
  /// [value] The amount of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume.
  OntapVolumeSnaplockConfigurationAutocommitPeriod({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory OntapVolumeSnaplockConfigurationAutocommitPeriod.fromMap(Map<String, dynamic> map) {
    return OntapVolumeSnaplockConfigurationAutocommitPeriod(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as int,
    );
  }
}

