// ignore_for_file: unused_element, unnecessary_cast

/// A Compute Engine machine series.
class MachineSeries2 {
  /// Code to identify a Compute Engine machine series. Consult https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison for more details on the available series.
  final String? code;

  MachineSeries2({
    this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    return map;
  }

  factory MachineSeries2.fromMap(Map<String, dynamic> map) {
    return MachineSeries2(
      code: map['code'] == null ? null : map['code'] as String,
    );
  }
}
