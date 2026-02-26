// ignore_for_file: unused_element, unnecessary_cast

class RegionInstanceGroupManagerStatefulInternalIp {
  /// , A value that prescribes what should happen to the internal ip when the VM instance is deleted. The available options are `NEVER` and `ON_PERMANENT_INSTANCE_DELETION`. `NEVER` - detach the ip when the VM is deleted, but do not delete the ip. `ON_PERMANENT_INSTANCE_DELETION` will delete the internal ip when the VM is permanently deleted from the instance group.
  final String? deleteRule;

  /// , The network interface name of the internal Ip. Possible value: <span pulumi-lang-nodejs="`nic0`" pulumi-lang-dotnet="`Nic0`" pulumi-lang-go="`nic0`" pulumi-lang-python="`nic0`" pulumi-lang-yaml="`nic0`" pulumi-lang-java="`nic0`">`nic0`</span>.
  final String? interfaceName;

  RegionInstanceGroupManagerStatefulInternalIp({
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

  factory RegionInstanceGroupManagerStatefulInternalIp.fromMap(
      Map<String, dynamic> map) {
    return RegionInstanceGroupManagerStatefulInternalIp(
      deleteRule:
          map['deleteRule'] == null ? null : map['deleteRule'] as String,
      interfaceName:
          map['interfaceName'] == null ? null : map['interfaceName'] as String,
    );
  }
}
