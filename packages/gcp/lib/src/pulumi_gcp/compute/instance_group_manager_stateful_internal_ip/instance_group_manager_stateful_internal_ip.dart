// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerStatefulInternalIp {
  /// , A value that prescribes what should happen to the internal ip when the VM instance is deleted. The available options are `NEVER` and `ON_PERMANENT_INSTANCE_DELETION`. `NEVER` - detach the ip when the VM is deleted, but do not delete the ip. `ON_PERMANENT_INSTANCE_DELETION` will delete the internal ip when the VM is permanently deleted from the instance group.
  final String? deleteRule;

  /// , The network interface name of the internal Ip. Possible value: `nic0`
  final String? interfaceName;

  InstanceGroupManagerStatefulInternalIp({
    this.deleteRule,
    this.interfaceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteRuleValue = deleteRule;
    if (deleteRuleValue != null) {
      map['deleteRule'] = deleteRuleValue;
    }
    final interfaceNameValue = interfaceName;
    if (interfaceNameValue != null) {
      map['interfaceName'] = interfaceNameValue;
    }
    return map;
  }

  factory InstanceGroupManagerStatefulInternalIp.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStatefulInternalIp(
      deleteRule:
          map['deleteRule'] == null ? null : map['deleteRule'] as String,
      interfaceName:
          map['interfaceName'] == null ? null : map['interfaceName'] as String,
    );
  }
}
