// ignore_for_file: unused_element, unnecessary_cast


class VlanInterface {
  /// Specifies a list of tagged interfaces or trunks associated with this VLAN. Note that you can associate tagged interfaces or trunks with any number of VLANs.
  final bool? tagged;
  /// Physical or virtual port used for traffic
  final String? vlanport;

  /// Creates a new [VlanInterface].
  /// [tagged] Specifies a list of tagged interfaces or trunks associated with this VLAN. Note that you can associate tagged interfaces or trunks with any number of VLANs.
  /// [vlanport] Physical or virtual port used for traffic
  VlanInterface({
    this.tagged,
    this.vlanport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagged': ?tagged,
      'vlanport': ?vlanport,
    };
  }

  factory VlanInterface.fromMap(Map<String, dynamic> map) {
    return VlanInterface(
      tagged: map['tagged'] == null ? null : map['tagged'] as bool,
      vlanport: map['vlanport'] == null ? null : map['vlanport'] as String,
    );
  }
}

