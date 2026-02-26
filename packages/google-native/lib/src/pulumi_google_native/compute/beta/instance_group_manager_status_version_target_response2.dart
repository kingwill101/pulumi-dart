// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerStatusVersionTargetResponse2 {
  /// A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  final bool isReached;

  InstanceGroupManagerStatusVersionTargetResponse2({
    required this.isReached,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['isReached'] = isReached;
    return map;
  }

  factory InstanceGroupManagerStatusVersionTargetResponse2.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStatusVersionTargetResponse2(
      isReached: map['isReached'] as bool,
    );
  }
}
