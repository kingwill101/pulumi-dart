// ignore_for_file: unused_element, unnecessary_cast

/// A Compute Engine machine series.
class MachineSeriesResponse2 {
  /// Code to identify a Compute Engine machine series. Consult https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison for more details on the available series.
  final String code;

  MachineSeriesResponse2({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory MachineSeriesResponse2.fromMap(Map<String, dynamic> map) {
    return MachineSeriesResponse2(
      code: map['code'] as String,
    );
  }
}
