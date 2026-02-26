// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'machine_series2.dart';

/// The type of machines to consider when calculating virtual machine migration insights and recommendations. Not all machine types are available in all zones and regions.
class MachinePreferences2 {
  /// Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series.
  final List<MachineSeries2>? allowedMachineSeries;

  MachinePreferences2({
    this.allowedMachineSeries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedMachineSeriesValue = allowedMachineSeries;
    if (allowedMachineSeriesValue != null) {
      map['allowedMachineSeries'] =
          Input.encodeList<MachineSeries2, Map<String, dynamic>>(
              allowedMachineSeriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory MachinePreferences2.fromMap(Map<String, dynamic> map) {
    return MachinePreferences2(
      allowedMachineSeries: map['allowedMachineSeries'] == null
          ? null
          : Input.decodeList<MachineSeries2>(
              map['allowedMachineSeries'],
              (value) => MachineSeries2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
