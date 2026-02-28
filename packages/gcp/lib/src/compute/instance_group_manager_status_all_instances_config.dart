// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerStatusAllInstancesConfig {
  /// Current all-instances configuration revision. This value is in RFC3339 text format.
  final String? currentRevision;

  /// A bit indicating whether this configuration has been applied to all managed instances in the group.
  final bool? effective;

  /// Creates a new [InstanceGroupManagerStatusAllInstancesConfig].
  /// [currentRevision] Current all-instances configuration revision. This value is in RFC3339 text format.
  /// [effective] A bit indicating whether this configuration has been applied to all managed instances in the group.
  InstanceGroupManagerStatusAllInstancesConfig({
    this.currentRevision,
    this.effective,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final currentRevisionValue = currentRevision;
    if (currentRevisionValue != null) {
      map['currentRevision'] = currentRevisionValue;
    }
    final effectiveValue = effective;
    if (effectiveValue != null) {
      map['effective'] = effectiveValue;
    }
    return map;
  }

  factory InstanceGroupManagerStatusAllInstancesConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStatusAllInstancesConfig(
      currentRevision: map['currentRevision'] == null
          ? null
          : map['currentRevision'] as String,
      effective: map['effective'] == null ? null : map['effective'] as bool,
    );
  }
}
