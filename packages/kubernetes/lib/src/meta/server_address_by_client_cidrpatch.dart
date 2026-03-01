// ignore_for_file: unused_element, unnecessary_cast


/// ServerAddressByClientCIDR helps the client to determine the server address that they should use, depending on the clientCIDR that they match.
class ServerAddressByClientCIDRPatch {
  /// The CIDR with which clients can match their IP to figure out the server address that they should use.
  final String? clientCIDR;
  /// Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
  final String? serverAddress;

  /// Creates a new [ServerAddressByClientCIDRPatch].
  /// [clientCIDR] The CIDR with which clients can match their IP to figure out the server address that they should use.
  /// [serverAddress] Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
  ServerAddressByClientCIDRPatch({
    this.clientCIDR,
    this.serverAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCIDR': ?clientCIDR,
      'serverAddress': ?serverAddress,
    };
  }

  factory ServerAddressByClientCIDRPatch.fromMap(Map<String, dynamic> map) {
    return ServerAddressByClientCIDRPatch(
      clientCIDR: map['clientCIDR'] == null ? null : map['clientCIDR'] as String,
      serverAddress: map['serverAddress'] == null ? null : map['serverAddress'] as String,
    );
  }
}

