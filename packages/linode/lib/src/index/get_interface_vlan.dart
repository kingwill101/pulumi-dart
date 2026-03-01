// ignore_for_file: unused_element, unnecessary_cast


class GetInterfaceVlan {
  /// The IPAM (IP Address Management) address of the VLAN interface.
  final String ipamAddress;
  /// The label of the VLAN.
  final String vlanLabel;

  /// Creates a new [GetInterfaceVlan].
  /// [ipamAddress] The IPAM (IP Address Management) address of the VLAN interface.
  /// [vlanLabel] The label of the VLAN.
  GetInterfaceVlan({
    required this.ipamAddress,
    required this.vlanLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipamAddress': ipamAddress,
      'vlanLabel': vlanLabel,
    };
  }

  factory GetInterfaceVlan.fromMap(Map<String, dynamic> map) {
    return GetInterfaceVlan(
      ipamAddress: map['ipamAddress'] as String,
      vlanLabel: map['vlanLabel'] as String,
    );
  }
}

