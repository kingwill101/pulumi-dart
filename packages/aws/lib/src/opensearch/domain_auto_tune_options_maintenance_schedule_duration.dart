// ignore_for_file: unused_element, unnecessary_cast

class DomainAutoTuneOptionsMaintenanceScheduleDuration {
  /// Unit of time specifying the duration of an Auto-Tune maintenance window. Valid values: `HOURS`.
  final String unit;

  /// An integer specifying the value of the duration of an Auto-Tune maintenance window.
  final int value;

  /// Creates a new [DomainAutoTuneOptionsMaintenanceScheduleDuration].
  /// [unit] Unit of time specifying the duration of an Auto-Tune maintenance window. Valid values: `HOURS`.
  /// [value] An integer specifying the value of the duration of an Auto-Tune maintenance window.
  DomainAutoTuneOptionsMaintenanceScheduleDuration({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory DomainAutoTuneOptionsMaintenanceScheduleDuration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainAutoTuneOptionsMaintenanceScheduleDuration(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
