// ignore_for_file: unused_element, unnecessary_cast


class GetServersServerNetwork {
  final List<String> aliasIps;
  final String ip;
  final String macAddress;
  final int networkId;

  /// Creates a new [GetServersServerNetwork].
  /// [aliasIps] Required.
  /// [ip] Required.
  /// [macAddress] Required.
  /// [networkId] Required.
  GetServersServerNetwork({
    required this.aliasIps,
    required this.ip,
    required this.macAddress,
    required this.networkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasIps': aliasIps,
      'ip': ip,
      'macAddress': macAddress,
      'networkId': networkId,
    };
  }

  factory GetServersServerNetwork.fromMap(Map<String, dynamic> map) {
    return GetServersServerNetwork(
      aliasIps: (map['aliasIps'] as List).cast<String>(),
      ip: map['ip'] as String,
      macAddress: map['macAddress'] as String,
      networkId: map['networkId'] as int,
    );
  }
}

