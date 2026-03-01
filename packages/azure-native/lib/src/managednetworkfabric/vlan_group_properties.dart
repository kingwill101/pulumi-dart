// ignore_for_file: unused_element, unnecessary_cast


/// Vlan group properties.
class VlanGroupProperties {
  /// Vlan group name.
  final String? name;
  /// List of vlans.
  final List<String>? vlans;

  /// Creates a new [VlanGroupProperties].
  /// [name] Vlan group name.
  /// [vlans] List of vlans.
  VlanGroupProperties({
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
      name: map['name'] == null ? null : map['name'] as String,
      vlans: map['vlans'] == null ? null : (map['vlans'] as List).cast<String>(),
    );
  }
}

