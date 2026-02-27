// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'machine_series_response.dart';

/// The type of machines to consider when calculating virtual machine migration insights and recommendations. Not all machine types are available in all zones and regions.
class MachinePreferencesResponse {
  /// Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series.
  final List<MachineSeriesResponse> allowedMachineSeries;

  MachinePreferencesResponse({
    required this.allowedMachineSeries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedMachineSeries'] =
        Input.encodeList<MachineSeriesResponse, Map<String, dynamic>>(
            allowedMachineSeries, (value) => value.toMap());
    return map;
  }

  factory MachinePreferencesResponse.fromMap(Map<String, dynamic> map) {
    return MachinePreferencesResponse(
      allowedMachineSeries: Input.decodeList<MachineSeriesResponse>(
          map['allowedMachineSeries'],
          (value) => MachineSeriesResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
