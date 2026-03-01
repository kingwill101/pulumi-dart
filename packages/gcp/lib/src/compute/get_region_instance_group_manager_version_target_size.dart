// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceGroupManagerVersionTargetSize {
  /// The number of instances which are managed for this version. Conflicts with percent.
  final int fixed;

  /// The number of instances (calculated as percentage) which are managed for this version. Conflicts with fixed. Note that when using percent, rounding will be in favor of explicitly set target_size values; a managed instance group with 2 instances and 2 versions, one of which has a target_size.percent of 60 will create 2 instances of that version.
  final int percent;

  /// Creates a new [GetRegionInstanceGroupManagerVersionTargetSize].
  /// [fixed] The number of instances which are managed for this version. Conflicts with percent.
  /// [percent] The number of instances (calculated as percentage) which are managed for this version. Conflicts with fixed. Note that when using percent, rounding will be in favor of explicitly set target_size values; a managed instance group with 2 instances and 2 versions, one of which has a target_size.percent of 60 will create 2 instances of that version.
  GetRegionInstanceGroupManagerVersionTargetSize({
    required this.fixed,
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fixed': fixed, 'percent': percent};
  }

  factory GetRegionInstanceGroupManagerVersionTargetSize.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstanceGroupManagerVersionTargetSize(
      fixed: map['fixed'] as int,
      percent: map['percent'] as int,
    );
  }
}
