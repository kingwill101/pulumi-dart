// ignore_for_file: unused_element, unnecessary_cast

/// A Compute Engine machine series.
class MachineSeriesResponseMigrationcenterV1alpha1 {
  /// Code to identify a Compute Engine machine series. Consult https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison for more details on the available series.
  final String code;

  /// Creates a new [MachineSeriesResponseMigrationcenterV1alpha1].
  /// [code] Code to identify a Compute Engine machine series. Consult https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison for more details on the available series.
  MachineSeriesResponseMigrationcenterV1alpha1({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory MachineSeriesResponseMigrationcenterV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return MachineSeriesResponseMigrationcenterV1alpha1(
      code: map['code'] as String,
    );
  }
}
