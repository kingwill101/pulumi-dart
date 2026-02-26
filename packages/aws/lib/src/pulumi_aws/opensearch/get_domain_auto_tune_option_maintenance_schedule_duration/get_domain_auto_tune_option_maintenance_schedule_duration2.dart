// ignore_for_file: unused_element, unnecessary_cast

class GetDomainAutoTuneOptionMaintenanceScheduleDuration2 {
  /// Unit of time.
  final String unit;

  /// Duration of an Auto-Tune maintenance window.
  final int value;

  GetDomainAutoTuneOptionMaintenanceScheduleDuration2({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory GetDomainAutoTuneOptionMaintenanceScheduleDuration2.fromMap(
      Map<String, dynamic> map) {
    return GetDomainAutoTuneOptionMaintenanceScheduleDuration2(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
