// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerStatusVersionTargetResponseComputeBeta {
  /// A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  final bool isReached;

  /// Creates a new [InstanceGroupManagerStatusVersionTargetResponseComputeBeta].
  /// [isReached] A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  InstanceGroupManagerStatusVersionTargetResponseComputeBeta({
    required this.isReached,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'isReached': isReached};
  }

  factory InstanceGroupManagerStatusVersionTargetResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGroupManagerStatusVersionTargetResponseComputeBeta(
      isReached: map['isReached'] as bool,
    );
  }
}
