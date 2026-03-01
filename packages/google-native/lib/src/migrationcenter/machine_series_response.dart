// ignore_for_file: unused_element, unnecessary_cast

/// A Compute Engine machine series.
class MachineSeriesResponse {
  /// Code to identify a Compute Engine machine series. Consult https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison for more details on the available series.
  final String code;

  /// Creates a new [MachineSeriesResponse].
  /// [code] Code to identify a Compute Engine machine series. Consult https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison for more details on the available series.
  MachineSeriesResponse({required this.code});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': code};
  }

  factory MachineSeriesResponse.fromMap(Map<String, dynamic> map) {
    return MachineSeriesResponse(code: map['code'] as String);
  }
}
