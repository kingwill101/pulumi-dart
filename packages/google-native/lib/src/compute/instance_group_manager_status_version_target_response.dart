// ignore_for_file: unused_element, unnecessary_cast


class InstanceGroupManagerStatusVersionTargetResponse {
  /// A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  final bool isReached;

  /// Creates a new [InstanceGroupManagerStatusVersionTargetResponse].
  /// [isReached] A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  InstanceGroupManagerStatusVersionTargetResponse({
    required this.isReached,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isReached': isReached,
    };
  }

  factory InstanceGroupManagerStatusVersionTargetResponse.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatusVersionTargetResponse(
      isReached: map['isReached'] as bool,
    );
  }
}

