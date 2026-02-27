// ignore_for_file: unused_element, unnecessary_cast

class DomainAutoTuneOptionsMaintenanceScheduleDurationOpensearch {
  /// Unit of time specifying the duration of an Auto-Tune maintenance window. Valid values: `HOURS`.
  final String unit;

  /// An integer specifying the value of the duration of an Auto-Tune maintenance window.
  final int value;

  DomainAutoTuneOptionsMaintenanceScheduleDurationOpensearch({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory DomainAutoTuneOptionsMaintenanceScheduleDurationOpensearch.fromMap(
      Map<String, dynamic> map) {
    return DomainAutoTuneOptionsMaintenanceScheduleDurationOpensearch(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
