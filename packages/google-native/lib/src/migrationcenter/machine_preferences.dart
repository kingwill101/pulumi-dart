// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_series.dart';

/// The type of machines to consider when calculating virtual machine migration insights and recommendations. Not all machine types are available in all zones and regions.
class MachinePreferences {
  /// Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series.
  final List<MachineSeries>? allowedMachineSeries;

  /// Creates a new [MachinePreferences].
  /// [allowedMachineSeries] Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series.
  MachinePreferences({this.allowedMachineSeries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMachineSeries': ?allowedMachineSeries == null
          ? null
          : pulumi.Input.encodeList<MachineSeries, Map<String, dynamic>>(
              allowedMachineSeries!,
              (value) => value.toMap(),
            ),
    };
  }

  factory MachinePreferences.fromMap(Map<String, dynamic> map) {
    return MachinePreferences(
      allowedMachineSeries: map['allowedMachineSeries'] == null
          ? null
          : pulumi.Input.decodeList<MachineSeries>(
              map['allowedMachineSeries'],
              (value) =>
                  MachineSeries.fromMap((value as Map).cast<String, dynamic>()),
            ),
    );
  }
}
