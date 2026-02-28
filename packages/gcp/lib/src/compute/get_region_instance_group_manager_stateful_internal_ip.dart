// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceGroupManagerStatefulInternalIp {
  /// A value that prescribes what should happen to an associated static Address resource when a VM instance is permanently deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the IP when the VM is deleted, but do not delete the address resource. ON_PERMANENT_INSTANCE_DELETION will delete the stateful address when the VM is permanently deleted from the instance group. The default is NEVER.
  final String deleteRule;

  /// The network interface name
  final String interfaceName;

  /// Creates a new [GetRegionInstanceGroupManagerStatefulInternalIp].
  /// [deleteRule] A value that prescribes what should happen to an associated static Address resource when a VM instance is permanently deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the IP when the VM is deleted, but do not delete the address resource. ON_PERMANENT_INSTANCE_DELETION will delete the stateful address when the VM is permanently deleted from the instance group. The default is NEVER.
  /// [interfaceName] The network interface name
  GetRegionInstanceGroupManagerStatefulInternalIp({
    required this.deleteRule,
    required this.interfaceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deleteRule'] = deleteRule;
    map['interfaceName'] = interfaceName;
    return map;
  }

  factory GetRegionInstanceGroupManagerStatefulInternalIp.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerStatefulInternalIp(
      deleteRule: map['deleteRule'] as String,
      interfaceName: map['interfaceName'] as String,
    );
  }
}
