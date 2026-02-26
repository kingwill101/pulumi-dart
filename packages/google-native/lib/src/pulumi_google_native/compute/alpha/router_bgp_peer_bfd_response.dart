// ignore_for_file: unused_element, unnecessary_cast

class RouterBgpPeerBfdResponse {
  /// The minimum interval, in milliseconds, between BFD control packets received from the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the transmit interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  final int minReceiveInterval;

  /// The minimum interval, in milliseconds, between BFD control packets transmitted to the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the corresponding receive interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  final int minTransmitInterval;

  /// The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is PASSIVE.
  final String mode;

  /// The number of consecutive BFD packets that must be missed before BFD declares that a peer is unavailable. If set, the value must be a value between 5 and 16. The default is 5.
  final int multiplier;

  /// The BFD packet mode for this BGP peer. If set to CONTROL_AND_ECHO, BFD echo mode is enabled for this BGP peer. In this mode, if the peer router also has BFD echo mode enabled, BFD echo packets will be sent to the other router. If the peer router does not have BFD echo mode enabled, only control packets will be sent. If set to CONTROL_ONLY, BFD echo mode is disabled for this BGP peer. If this router and the peer router have a multihop connection, this should be set to CONTROL_ONLY as BFD echo mode is only supported on singlehop connections. The default is CONTROL_AND_ECHO.
  final String packetMode;

  /// The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is DISABLED.
  final String sessionInitializationMode;

  /// The minimum interval, in milliseconds, between BFD control packets transmitted to and received from the peer router when BFD echo mode is enabled on both routers. The actual transmit and receive intervals are negotiated between the two routers and are equal to the greater of this value and the corresponding interval on the other router. If set, this value must be between 1000 and 30000. The default is 5000.
  final int slowTimerInterval;

  RouterBgpPeerBfdResponse({
    required this.minReceiveInterval,
    required this.minTransmitInterval,
    required this.mode,
    required this.multiplier,
    required this.packetMode,
    required this.sessionInitializationMode,
    required this.slowTimerInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minReceiveInterval'] = minReceiveInterval;
    map['minTransmitInterval'] = minTransmitInterval;
    map['mode'] = mode;
    map['multiplier'] = multiplier;
    map['packetMode'] = packetMode;
    map['sessionInitializationMode'] = sessionInitializationMode;
    map['slowTimerInterval'] = slowTimerInterval;
    return map;
  }

  factory RouterBgpPeerBfdResponse.fromMap(Map<String, dynamic> map) {
    return RouterBgpPeerBfdResponse(
      minReceiveInterval: map['minReceiveInterval'] as int,
      minTransmitInterval: map['minTransmitInterval'] as int,
      mode: map['mode'] as String,
      multiplier: map['multiplier'] as int,
      packetMode: map['packetMode'] as String,
      sessionInitializationMode: map['sessionInitializationMode'] as String,
      slowTimerInterval: map['slowTimerInterval'] as int,
    );
  }
}
