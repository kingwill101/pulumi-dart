// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The vlan match conditions that need to be matched.
class VlanMatchCondition {
  /// List of inner vlans that need to be matched.
  final pulumi.Input<List<String>?>? innerVlans;
  /// List of vlan group names that need to be matched.
  final pulumi.Input<List<String>?>? vlanGroupNames;
  /// List of vlans that need to be matched.
  final pulumi.Input<List<String>?>? vlans;

  /// Creates a new [VlanMatchCondition].
  /// [innerVlans] List of inner vlans that need to be matched.
  /// [vlanGroupNames] List of vlan group names that need to be matched.
  /// [vlans] List of vlans that need to be matched.
  const VlanMatchCondition({
    this.innerVlans,
    this.vlanGroupNames,
    this.vlans,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'innerVlans': ?innerVlans,
      'vlanGroupNames': ?vlanGroupNames,
      'vlans': ?vlans,
    };
  }

  factory VlanMatchCondition.fromMap(Map<String, dynamic> map) {
    return VlanMatchCondition(
      innerVlans: (() { final guardedValue = map['innerVlans']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vlanGroupNames: (() { final guardedValue = map['vlanGroupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vlans: (() { final guardedValue = map['vlans']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
