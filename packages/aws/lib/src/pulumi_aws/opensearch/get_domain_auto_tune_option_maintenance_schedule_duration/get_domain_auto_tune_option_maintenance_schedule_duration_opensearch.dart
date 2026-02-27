// ignore_for_file: unused_element, unnecessary_cast

class GetDomainAutoTuneOptionMaintenanceScheduleDurationOpensearch {
  /// Unit of time.
  final String unit;

  /// Duration of an Auto-Tune maintenance window.
  final int value;

  GetDomainAutoTuneOptionMaintenanceScheduleDurationOpensearch({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory GetDomainAutoTuneOptionMaintenanceScheduleDurationOpensearch.fromMap(
      Map<String, dynamic> map) {
    return GetDomainAutoTuneOptionMaintenanceScheduleDurationOpensearch(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
