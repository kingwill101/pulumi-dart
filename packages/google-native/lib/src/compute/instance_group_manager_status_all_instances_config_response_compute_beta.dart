// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerStatusAllInstancesConfigResponseComputeBeta {
  /// Current all-instances configuration revision. This value is in RFC3339 text format.
  final String currentRevision;

  /// A bit indicating whether this configuration has been applied to all managed instances in the group.
  final bool effective;

  /// Creates a new [InstanceGroupManagerStatusAllInstancesConfigResponseComputeBeta].
  /// [currentRevision] Current all-instances configuration revision. This value is in RFC3339 text format.
  /// [effective] A bit indicating whether this configuration has been applied to all managed instances in the group.
  InstanceGroupManagerStatusAllInstancesConfigResponseComputeBeta({
    required this.currentRevision,
    required this.effective,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['currentRevision'] = currentRevision;
    map['effective'] = effective;
    return map;
  }

  factory InstanceGroupManagerStatusAllInstancesConfigResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStatusAllInstancesConfigResponseComputeBeta(
      currentRevision: map['currentRevision'] as String,
      effective: map['effective'] as bool,
    );
  }
}
