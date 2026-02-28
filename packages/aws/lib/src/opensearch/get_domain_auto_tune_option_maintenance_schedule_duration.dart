// ignore_for_file: unused_element, unnecessary_cast

class GetDomainAutoTuneOptionMaintenanceScheduleDuration {
  /// Unit of time.
  final String unit;

  /// Duration of an Auto-Tune maintenance window.
  final int value;

  /// Creates a new [GetDomainAutoTuneOptionMaintenanceScheduleDuration].
  /// [unit] Unit of time.
  /// [value] Duration of an Auto-Tune maintenance window.
  GetDomainAutoTuneOptionMaintenanceScheduleDuration({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory GetDomainAutoTuneOptionMaintenanceScheduleDuration.fromMap(
      Map<String, dynamic> map) {
    return GetDomainAutoTuneOptionMaintenanceScheduleDuration(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
