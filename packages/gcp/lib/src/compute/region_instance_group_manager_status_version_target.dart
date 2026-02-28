// ignore_for_file: unused_element, unnecessary_cast

class RegionInstanceGroupManagerStatusVersionTarget {
  /// A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  final bool? isReached;

  /// Creates a new [RegionInstanceGroupManagerStatusVersionTarget].
  /// [isReached] A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  RegionInstanceGroupManagerStatusVersionTarget({
    this.isReached,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final isReachedValue = isReached;
    if (isReachedValue != null) {
      map['isReached'] = isReachedValue;
    }
    return map;
  }

  factory RegionInstanceGroupManagerStatusVersionTarget.fromMap(
      Map<String, dynamic> map) {
    return RegionInstanceGroupManagerStatusVersionTarget(
      isReached: map['isReached'] == null ? null : map['isReached'] as bool,
    );
  }
}
