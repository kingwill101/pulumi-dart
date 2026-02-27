// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'machine_series_response2.dart';

/// The type of machines to consider when calculating virtual machine migration insights and recommendations. Not all machine types are available in all zones and regions.
class MachinePreferencesResponse2 {
  /// Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series.
  final List<MachineSeriesResponse2> allowedMachineSeries;

  MachinePreferencesResponse2({
    required this.allowedMachineSeries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedMachineSeries'] =
        Input.encodeList<MachineSeriesResponse2, Map<String, dynamic>>(
            allowedMachineSeries, (value) => value.toMap());
    return map;
  }

  factory MachinePreferencesResponse2.fromMap(Map<String, dynamic> map) {
    return MachinePreferencesResponse2(
      allowedMachineSeries: Input.decodeList<MachineSeriesResponse2>(
          map['allowedMachineSeries'],
          (value) => MachineSeriesResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
