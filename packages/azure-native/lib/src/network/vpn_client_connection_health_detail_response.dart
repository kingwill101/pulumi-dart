// ignore_for_file: unused_element, unnecessary_cast


/// VPN client connection health detail.
class VpnClientConnectionHealthDetailResponse {
  /// The egress bytes per second.
  final double egressBytesTransferred;
  /// The egress packets per second.
  final double egressPacketsTransferred;
  /// The ingress bytes per second.
  final double ingressBytesTransferred;
  /// The ingress packets per second.
  final double ingressPacketsTransferred;
  /// The max band width.
  final double maxBandwidth;
  /// The max packets transferred per second.
  final double maxPacketsPerSecond;
  /// The assigned private Ip of a connected vpn client.
  final String privateIpAddress;
  /// The public Ip of a connected vpn client.
  final String publicIpAddress;
  /// The duration time of a connected vpn client.
  final double vpnConnectionDuration;
  /// The vpn client Id.
  final String vpnConnectionId;
  /// The start time of a connected vpn client.
  final String vpnConnectionTime;
  /// The user name of a connected vpn client.
  final String vpnUserName;

  /// Creates a new [VpnClientConnectionHealthDetailResponse].
  /// [egressBytesTransferred] The egress bytes per second.
  /// [egressPacketsTransferred] The egress packets per second.
  /// [ingressBytesTransferred] The ingress bytes per second.
  /// [ingressPacketsTransferred] The ingress packets per second.
  /// [maxBandwidth] The max band width.
  /// [maxPacketsPerSecond] The max packets transferred per second.
  /// [privateIpAddress] The assigned private Ip of a connected vpn client.
  /// [publicIpAddress] The public Ip of a connected vpn client.
  /// [vpnConnectionDuration] The duration time of a connected vpn client.
  /// [vpnConnectionId] The vpn client Id.
  /// [vpnConnectionTime] The start time of a connected vpn client.
  /// [vpnUserName] The user name of a connected vpn client.
  VpnClientConnectionHealthDetailResponse({
    required this.egressBytesTransferred,
    required this.egressPacketsTransferred,
    required this.ingressBytesTransferred,
    required this.ingressPacketsTransferred,
    required this.maxBandwidth,
    required this.maxPacketsPerSecond,
    required this.privateIpAddress,
    required this.publicIpAddress,
    required this.vpnConnectionDuration,
    required this.vpnConnectionId,
    required this.vpnConnectionTime,
    required this.vpnUserName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressBytesTransferred': egressBytesTransferred,
      'egressPacketsTransferred': egressPacketsTransferred,
      'ingressBytesTransferred': ingressBytesTransferred,
      'ingressPacketsTransferred': ingressPacketsTransferred,
      'maxBandwidth': maxBandwidth,
      'maxPacketsPerSecond': maxPacketsPerSecond,
      'privateIpAddress': privateIpAddress,
      'publicIpAddress': publicIpAddress,
      'vpnConnectionDuration': vpnConnectionDuration,
      'vpnConnectionId': vpnConnectionId,
      'vpnConnectionTime': vpnConnectionTime,
      'vpnUserName': vpnUserName,
    };
  }

  factory VpnClientConnectionHealthDetailResponse.fromMap(Map<String, dynamic> map) {
    return VpnClientConnectionHealthDetailResponse(
      egressBytesTransferred: map['egressBytesTransferred'] as double,
      egressPacketsTransferred: map['egressPacketsTransferred'] as double,
      ingressBytesTransferred: map['ingressBytesTransferred'] as double,
      ingressPacketsTransferred: map['ingressPacketsTransferred'] as double,
      maxBandwidth: map['maxBandwidth'] as double,
      maxPacketsPerSecond: map['maxPacketsPerSecond'] as double,
      privateIpAddress: map['privateIpAddress'] as String,
      publicIpAddress: map['publicIpAddress'] as String,
      vpnConnectionDuration: map['vpnConnectionDuration'] as double,
      vpnConnectionId: map['vpnConnectionId'] as String,
      vpnConnectionTime: map['vpnConnectionTime'] as String,
      vpnUserName: map['vpnUserName'] as String,
    );
  }
}

