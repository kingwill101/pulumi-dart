// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceGroupManagerStatusVersionTarget {
  /// A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  final bool isReached;

  GetRegionInstanceGroupManagerStatusVersionTarget({
    required this.isReached,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['isReached'] = isReached;
    return map;
  }

  factory GetRegionInstanceGroupManagerStatusVersionTarget.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerStatusVersionTarget(
      isReached: map['isReached'] as bool,
    );
  }
}
