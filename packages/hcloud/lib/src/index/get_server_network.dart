// ignore_for_file: unused_element, unnecessary_cast


class GetServerNetwork {
  /// (list) A list of alias IP addresses assigned to the server in the network.
  final List<String> aliasIps;
  /// (string) The server's IP address within the network.
  final String ip;
  /// (string) The MAC address associated with the server's private network interface.
  final String macAddress;
  /// (int) The unique identifier for the network.
  final int networkId;

  /// Creates a new [GetServerNetwork].
  /// [aliasIps] (list) A list of alias IP addresses assigned to the server in the network.
  /// [ip] (string) The server's IP address within the network.
  /// [macAddress] (string) The MAC address associated with the server's private network interface.
  /// [networkId] (int) The unique identifier for the network.
  GetServerNetwork({
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

  factory GetServerNetwork.fromMap(Map<String, dynamic> map) {
    return GetServerNetwork(
      aliasIps: (map['aliasIps'] as List).cast<String>(),
      ip: map['ip'] as String,
      macAddress: map['macAddress'] as String,
      networkId: map['networkId'] as int,
    );
  }
}

