// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainAutoTuneOptionsMaintenanceScheduleDuration {
  /// Unit of time specifying the duration of an Auto-Tune maintenance window. Valid values: `HOURS`.
  final pulumi.Input<String> unit;
  /// An integer specifying the value of the duration of an Auto-Tune maintenance window.
  final pulumi.Input<int> value;

  /// Creates a new [DomainAutoTuneOptionsMaintenanceScheduleDuration].
  /// [unit] Unit of time specifying the duration of an Auto-Tune maintenance window. Valid values: `HOURS`.
  /// [value] An integer specifying the value of the duration of an Auto-Tune maintenance window.
  const DomainAutoTuneOptionsMaintenanceScheduleDuration({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory DomainAutoTuneOptionsMaintenanceScheduleDuration.fromMap(Map<String, dynamic> map) {
    return DomainAutoTuneOptionsMaintenanceScheduleDuration(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue((map['value'] as num).toInt()),
    );
  }
}
