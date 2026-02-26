// ignore_for_file: unused_element, unnecessary_cast

class GetRoutersRouterBgpPeer {
  final String advertiseMode;
  final int advertisedRoutePriority;
  final String enable;
  final bool enableIpv6;
  final String interfaceName;
  final String ipAddress;
  final String managementType;
  final String name;
  final int peerAsn;
  final String peerIpAddress;

  GetRoutersRouterBgpPeer({
    required this.advertiseMode,
    required this.advertisedRoutePriority,
    required this.enable,
    required this.enableIpv6,
    required this.interfaceName,
    required this.ipAddress,
    required this.managementType,
    required this.name,
    required this.peerAsn,
    required this.peerIpAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advertiseMode'] = advertiseMode;
    map['advertisedRoutePriority'] = advertisedRoutePriority;
    map['enable'] = enable;
    map['enableIpv6'] = enableIpv6;
    map['interfaceName'] = interfaceName;
    map['ipAddress'] = ipAddress;
    map['managementType'] = managementType;
    map['name'] = name;
    map['peerAsn'] = peerAsn;
    map['peerIpAddress'] = peerIpAddress;
    return map;
  }

  factory GetRoutersRouterBgpPeer.fromMap(Map<String, dynamic> map) {
    return GetRoutersRouterBgpPeer(
      advertiseMode: map['advertiseMode'] as String,
      advertisedRoutePriority: map['advertisedRoutePriority'] as int,
      enable: map['enable'] as String,
      enableIpv6: map['enableIpv6'] as bool,
      interfaceName: map['interfaceName'] as String,
      ipAddress: map['ipAddress'] as String,
      managementType: map['managementType'] as String,
      name: map['name'] as String,
      peerAsn: map['peerAsn'] as int,
      peerIpAddress: map['peerIpAddress'] as String,
    );
  }
}
