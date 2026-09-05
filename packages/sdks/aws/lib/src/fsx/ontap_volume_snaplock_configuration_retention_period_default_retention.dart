// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention {
  /// Type of time for the retention period of an FSx for ONTAP SnapLock volume. Set it to one of the valid types. If you set it to `INFINITE`, the files are retained forever. If you set it to `UNSPECIFIED`, the files are retained until you set an explicit retention period. Valid values: `SECONDS`, `MINUTES`, `HOURS`, `DAYS`, `MONTHS`, `YEARS`, `INFINITE`, `UNSPECIFIED`.
  final pulumi.Input<String?>? type;
  /// Amount of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume.
  final pulumi.Input<int?>? value;

  /// Creates a new [OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention].
  /// [type] Type of time for the retention period of an FSx for ONTAP SnapLock volume. Set it to one of the valid types. If you set it to `INFINITE`, the files are retained forever. If you set it to `UNSPECIFIED`, the files are retained until you set an explicit retention period. Valid values: `SECONDS`, `MINUTES`, `HOURS`, `DAYS`, `MONTHS`, `YEARS`, `INFINITE`, `UNSPECIFIED`.
  /// [value] Amount of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume.
  const OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention.fromMap(Map<String, dynamic> map) {
    return OntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
