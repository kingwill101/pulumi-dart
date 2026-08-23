// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Vlan group properties.
class VlanGroupProperties {
  /// Vlan group name.
  final pulumi.Input<String>? name;
  /// List of vlans.
  final pulumi.Input<List<String>>? vlans;

  /// Creates a new [VlanGroupProperties].
  /// [name] Vlan group name.
  /// [vlans] List of vlans.
  const VlanGroupProperties({
    this.name,
    this.vlans,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'vlans': ?vlans,
    };
  }

  factory VlanGroupProperties.fromMap(Map<String, dynamic> map) {
    return VlanGroupProperties(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlans: (() { final guardedValue = map['vlans']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
