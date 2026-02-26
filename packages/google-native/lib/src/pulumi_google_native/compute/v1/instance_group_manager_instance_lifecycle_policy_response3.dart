// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerInstanceLifecyclePolicyResponse3 {
  /// A bit indicating whether to forcefully apply the group's latest configuration when repairing a VM. Valid options are: - NO (default): If configuration updates are available, they are not forcefully applied during repair. Instead, configuration updates are applied according to the group's update policy. - YES: If configuration updates are available, they are applied during repair.
  final String forceUpdateOnRepair;

  InstanceGroupManagerInstanceLifecyclePolicyResponse3({
    required this.forceUpdateOnRepair,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['forceUpdateOnRepair'] = forceUpdateOnRepair;
    return map;
  }

  factory InstanceGroupManagerInstanceLifecyclePolicyResponse3.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceLifecyclePolicyResponse3(
      forceUpdateOnRepair: map['forceUpdateOnRepair'] as String,
    );
  }
}
