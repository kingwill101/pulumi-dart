// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallSettingsDefaultFirewallIds {
  final int linode;
  final int nodebalancer;
  final int publicInterface;
  final int vpcInterface;

  /// Creates a new [GetFirewallSettingsDefaultFirewallIds].
  /// [linode] Required.
  /// [nodebalancer] Required.
  /// [publicInterface] Required.
  /// [vpcInterface] Required.
  GetFirewallSettingsDefaultFirewallIds({
    required this.linode,
    required this.nodebalancer,
    required this.publicInterface,
    required this.vpcInterface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linode': linode,
      'nodebalancer': nodebalancer,
      'publicInterface': publicInterface,
      'vpcInterface': vpcInterface,
    };
  }

  factory GetFirewallSettingsDefaultFirewallIds.fromMap(Map<String, dynamic> map) {
    return GetFirewallSettingsDefaultFirewallIds(
      linode: map['linode'] as int,
      nodebalancer: map['nodebalancer'] as int,
      publicInterface: map['publicInterface'] as int,
      vpcInterface: map['vpcInterface'] as int,
    );
  }
}

