// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerVersionTargetSize {
  /// , The number of instances which are managed for this version. Conflicts with `percent`.
  final int? fixed;

  /// , The number of instances (calculated as percentage) which are managed for this version. Conflicts with `fixed`.
  /// Note that when using `percent`, rounding will be in favor of explicitly set `target_size` values; a managed instance group with 2 instances and 2 `version`s,
  /// one of which has a `target_size.percent` of `60` will create 2 instances of that `version`.
  final int? percent;

  /// Creates a new [InstanceGroupManagerVersionTargetSize].
  /// [fixed] , The number of instances which are managed for this version. Conflicts with `percent`.
  /// [percent] , The number of instances (calculated as percentage) which are managed for this version. Conflicts with `fixed`.
  InstanceGroupManagerVersionTargetSize({
    this.fixed,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fixedValue = fixed;
    if (fixedValue != null) {
      map['fixed'] = fixedValue;
    }
    final percentValue = percent;
    if (percentValue != null) {
      map['percent'] = percentValue;
    }
    return map;
  }

  factory InstanceGroupManagerVersionTargetSize.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerVersionTargetSize(
      fixed: map['fixed'] == null ? null : map['fixed'] as int,
      percent: map['percent'] == null ? null : map['percent'] as int,
    );
  }
}
