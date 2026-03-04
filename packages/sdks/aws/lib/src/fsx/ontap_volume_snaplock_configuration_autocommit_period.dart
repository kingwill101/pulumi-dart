// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OntapVolumeSnaplockConfigurationAutocommitPeriod {
  /// The type of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume. Setting this value to `NONE` disables autocommit. Valid values: `MINUTES`, `HOURS`, `DAYS`, `MONTHS`, `YEARS`, `NONE`.
  final pulumi.Input<String>? type;

  /// The amount of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume.
  final pulumi.Input<int>? value;

  /// Creates a new [OntapVolumeSnaplockConfigurationAutocommitPeriod].
  /// [type] The type of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume. Setting this value to `NONE` disables autocommit. Valid values: `MINUTES`, `HOURS`, `DAYS`, `MONTHS`, `YEARS`, `NONE`.
  /// [value] The amount of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume.
  OntapVolumeSnaplockConfigurationAutocommitPeriod({this.type, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type, 'value': ?value};
  }

  factory OntapVolumeSnaplockConfigurationAutocommitPeriod.fromMap(
    Map<String, dynamic> map,
  ) {
    return OntapVolumeSnaplockConfigurationAutocommitPeriod(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
