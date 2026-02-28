// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceGroupManagerStatusVersionTarget {
  /// A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  final bool isReached;

  /// Creates a new [GetInstanceGroupManagerStatusVersionTarget].
  /// [isReached] A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  GetInstanceGroupManagerStatusVersionTarget({
    required this.isReached,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['isReached'] = isReached;
    return map;
  }

  factory GetInstanceGroupManagerStatusVersionTarget.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceGroupManagerStatusVersionTarget(
      isReached: map['isReached'] as bool,
    );
  }
}
