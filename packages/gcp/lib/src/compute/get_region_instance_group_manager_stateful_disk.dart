// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceGroupManagerStatefulDisk {
  /// A value that prescribes what should happen to the stateful disk when the VM instance is deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the disk when the VM is deleted, but do not delete the disk. ON_PERMANENT_INSTANCE_DELETION will delete the stateful disk when the VM is permanently deleted from the instance group. The default is NEVER.
  final String deleteRule;

  /// The device name of the disk to be attached.
  final String deviceName;

  /// Creates a new [GetRegionInstanceGroupManagerStatefulDisk].
  /// [deleteRule] A value that prescribes what should happen to the stateful disk when the VM instance is deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the disk when the VM is deleted, but do not delete the disk. ON_PERMANENT_INSTANCE_DELETION will delete the stateful disk when the VM is permanently deleted from the instance group. The default is NEVER.
  /// [deviceName] The device name of the disk to be attached.
  GetRegionInstanceGroupManagerStatefulDisk({
    required this.deleteRule,
    required this.deviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deleteRule'] = deleteRule;
    map['deviceName'] = deviceName;
    return map;
  }

  factory GetRegionInstanceGroupManagerStatefulDisk.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerStatefulDisk(
      deleteRule: map['deleteRule'] as String,
      deviceName: map['deviceName'] as String,
    );
  }
}
