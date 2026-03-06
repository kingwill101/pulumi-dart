// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Vlan group properties.
class VlanGroupPropertiesResponse {
  /// Vlan group name.
  final pulumi.Input<String>? name;
  /// List of vlans.
  final pulumi.Input<List<String>>? vlans;

  /// Creates a new [VlanGroupPropertiesResponse].
  /// [name] Vlan group name.
  /// [vlans] List of vlans.
  const VlanGroupPropertiesResponse({
    this.name,
    this.vlans,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'vlans': ?vlans,
    };
  }

  factory VlanGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VlanGroupPropertiesResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlans: (() { final guardedValue = map['vlans']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

