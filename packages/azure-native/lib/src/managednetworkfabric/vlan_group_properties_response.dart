// ignore_for_file: unused_element, unnecessary_cast


/// Vlan group properties.
class VlanGroupPropertiesResponse {
  /// Vlan group name.
  final String? name;
  /// List of vlans.
  final List<String>? vlans;

  /// Creates a new [VlanGroupPropertiesResponse].
  /// [name] Vlan group name.
  /// [vlans] List of vlans.
  VlanGroupPropertiesResponse({
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
      name: map['name'] == null ? null : map['name'] as String,
      vlans: map['vlans'] == null ? null : (map['vlans'] as List).cast<String>(),
    );
  }
}

