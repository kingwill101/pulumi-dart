// ignore_for_file: unused_element, unnecessary_cast


/// ServerAddressByClientCIDR helps the client to determine the server address that they should use, depending on the clientCIDR that they match.
class ServerAddressByClientCIDR {
  /// The CIDR with which clients can match their IP to figure out the server address that they should use.
  final String clientCIDR;
  /// Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
  final String serverAddress;

  /// Creates a new [ServerAddressByClientCIDR].
  /// [clientCIDR] The CIDR with which clients can match their IP to figure out the server address that they should use.
  /// [serverAddress] Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
  ServerAddressByClientCIDR({
    required this.clientCIDR,
    required this.serverAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCIDR': clientCIDR,
      'serverAddress': serverAddress,
    };
  }

  factory ServerAddressByClientCIDR.fromMap(Map<String, dynamic> map) {
    return ServerAddressByClientCIDR(
      clientCIDR: map['clientCIDR'] as String,
      serverAddress: map['serverAddress'] as String,
    );
  }
}

