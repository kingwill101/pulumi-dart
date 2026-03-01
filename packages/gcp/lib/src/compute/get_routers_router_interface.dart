// ignore_for_file: unused_element, unnecessary_cast

class GetRoutersRouterInterface {
  final String ipRange;
  final String linkedInterconnectAttachment;
  final String linkedVpnTunnel;
  final String name;
  final String privateIpAddress;
  final String redundantInterface;
  final String subnetwork;

  /// Creates a new [GetRoutersRouterInterface].
  /// [ipRange] Required.
  /// [linkedInterconnectAttachment] Required.
  /// [linkedVpnTunnel] Required.
  /// [name] Required.
  /// [privateIpAddress] Required.
  /// [redundantInterface] Required.
  /// [subnetwork] Required.
  GetRoutersRouterInterface({
    required this.ipRange,
    required this.linkedInterconnectAttachment,
    required this.linkedVpnTunnel,
    required this.name,
    required this.privateIpAddress,
    required this.redundantInterface,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRange': ipRange,
      'linkedInterconnectAttachment': linkedInterconnectAttachment,
      'linkedVpnTunnel': linkedVpnTunnel,
      'name': name,
      'privateIpAddress': privateIpAddress,
      'redundantInterface': redundantInterface,
      'subnetwork': subnetwork,
    };
  }

  factory GetRoutersRouterInterface.fromMap(Map<String, dynamic> map) {
    return GetRoutersRouterInterface(
      ipRange: map['ipRange'] as String,
      linkedInterconnectAttachment:
          map['linkedInterconnectAttachment'] as String,
      linkedVpnTunnel: map['linkedVpnTunnel'] as String,
      name: map['name'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      redundantInterface: map['redundantInterface'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}
