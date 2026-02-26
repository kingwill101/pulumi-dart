// ignore_for_file: unused_element, unnecessary_cast

class RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair {
  /// , Specifies whether the MIG can change a VM's zone during a repair. If "YES", MIG can select a different zone for the VM during a repair. Else if "NO", MIG cannot change a VM's zone during a repair. The default value of<span pulumi-lang-nodejs=" allowChangingZone " pulumi-lang-dotnet=" AllowChangingZone " pulumi-lang-go=" allowChangingZone " pulumi-lang-python=" allow_changing_zone " pulumi-lang-yaml=" allowChangingZone " pulumi-lang-java=" allowChangingZone "> allow_changing_zone </span>is "NO".
  ///
  /// - - -
  /// <a name=<span pulumi-lang-nodejs=""nestedInstanceFlexibilityPolicy"" pulumi-lang-dotnet=""NestedInstanceFlexibilityPolicy"" pulumi-lang-go=""nestedInstanceFlexibilityPolicy"" pulumi-lang-python=""nested_instance_flexibility_policy"" pulumi-lang-yaml=""nestedInstanceFlexibilityPolicy"" pulumi-lang-java=""nestedInstanceFlexibilityPolicy"">"nested_instance_flexibility_policy"</span>></a>The <span pulumi-lang-nodejs="`instanceFlexibilityPolicy`" pulumi-lang-dotnet="`InstanceFlexibilityPolicy`" pulumi-lang-go="`instanceFlexibilityPolicy`" pulumi-lang-python="`instance_flexibility_policy`" pulumi-lang-yaml="`instanceFlexibilityPolicy`" pulumi-lang-java="`instanceFlexibilityPolicy`">`instance_flexibility_policy`</span> block supports:
  final String? allowChangingZone;

  RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair({
    this.allowChangingZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowChangingZoneValue = allowChangingZone;
    if (allowChangingZoneValue != null) {
      map['allowChangingZone'] = allowChangingZoneValue;
    }
    return map;
  }

  factory RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair.fromMap(
      Map<String, dynamic> map) {
    return RegionInstanceGroupManagerInstanceLifecyclePolicyOnRepair(
      allowChangingZone: map['allowChangingZone'] == null
          ? null
          : map['allowChangingZone'] as String,
    );
  }
}
