// ignore_for_file: unused_element, unnecessary_cast

/// A Compute Engine machine series.
class MachineSeriesMigrationcenterV1alpha1 {
  /// Code to identify a Compute Engine machine series. Consult https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison for more details on the available series.
  final String? code;

  MachineSeriesMigrationcenterV1alpha1({
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

  factory MachineSeriesMigrationcenterV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return MachineSeriesMigrationcenterV1alpha1(
      code: map['code'] == null ? null : map['code'] as String,
    );
  }
}
