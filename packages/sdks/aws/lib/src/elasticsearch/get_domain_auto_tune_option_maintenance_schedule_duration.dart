// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainAutoTuneOptionMaintenanceScheduleDuration {
  /// Unit of time.
  final pulumi.Input<String> unit;
  /// Duration of an Auto-Tune maintenance window.
  final pulumi.Input<int> value;

  /// Creates a new [GetDomainAutoTuneOptionMaintenanceScheduleDuration].
  /// [unit] Unit of time.
  /// [value] Duration of an Auto-Tune maintenance window.
  GetDomainAutoTuneOptionMaintenanceScheduleDuration({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetDomainAutoTuneOptionMaintenanceScheduleDuration.fromMap(Map<String, dynamic> map) {
    return GetDomainAutoTuneOptionMaintenanceScheduleDuration(
      unit: (map['unit'] as String).input(),
      value: (map['value'] as int).input(),
    );
  }
}

