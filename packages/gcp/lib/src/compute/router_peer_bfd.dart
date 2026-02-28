// ignore_for_file: unused_element, unnecessary_cast

class RouterPeerBfd {
  /// The minimum interval, in milliseconds, between BFD control packets
  /// received from the peer router. The actual value is negotiated
  /// between the two routers and is equal to the greater of this value
  /// and the transmit interval of the other router. If set, this value
  /// must be between 1000 and 30000.
  final int? minReceiveInterval;

  /// The minimum interval, in milliseconds, between BFD control packets
  /// transmitted to the peer router. The actual value is negotiated
  /// between the two routers and is equal to the greater of this value
  /// and the corresponding receive interval of the other router. If set,
  /// this value must be between 1000 and 30000.
  final int? minTransmitInterval;

  /// The number of consecutive BFD packets that must be missed before
  /// BFD declares that a peer is unavailable. If set, the value must
  /// be a value between 5 and 16.
  ///
  /// <a name="nested_md5_authentication_key"></a>The `md5_authentication_key` block supports:
  final int? multiplier;

  /// The BFD session initialization mode for this BGP peer.
  /// If set to `ACTIVE`, the Cloud Router will initiate the BFD session
  /// for this BGP peer. If set to `PASSIVE`, the Cloud Router will wait
  /// for the peer router to initiate the BFD session for this BGP peer.
  /// If set to `DISABLED`, BFD is disabled for this BGP peer.
  /// Possible values are: `ACTIVE`, `DISABLED`, `PASSIVE`.
  final String sessionInitializationMode;

  /// Creates a new [RouterPeerBfd].
  /// [minReceiveInterval] The minimum interval, in milliseconds, between BFD control packets
  /// [minTransmitInterval] The minimum interval, in milliseconds, between BFD control packets
  /// [multiplier] The number of consecutive BFD packets that must be missed before
  /// [sessionInitializationMode] The BFD session initialization mode for this BGP peer.
  RouterPeerBfd({
    this.minReceiveInterval,
    this.minTransmitInterval,
    this.multiplier,
    required this.sessionInitializationMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minReceiveIntervalValue = minReceiveInterval;
    if (minReceiveIntervalValue != null) {
      map['minReceiveInterval'] = minReceiveIntervalValue;
    }
    final minTransmitIntervalValue = minTransmitInterval;
    if (minTransmitIntervalValue != null) {
      map['minTransmitInterval'] = minTransmitIntervalValue;
    }
    final multiplierValue = multiplier;
    if (multiplierValue != null) {
      map['multiplier'] = multiplierValue;
    }
    map['sessionInitializationMode'] = sessionInitializationMode;
    return map;
  }

  factory RouterPeerBfd.fromMap(Map<String, dynamic> map) {
    return RouterPeerBfd(
      minReceiveInterval: map['minReceiveInterval'] == null
          ? null
          : map['minReceiveInterval'] as int,
      minTransmitInterval: map['minTransmitInterval'] == null
          ? null
          : map['minTransmitInterval'] as int,
      multiplier: map['multiplier'] == null ? null : map['multiplier'] as int,
      sessionInitializationMode: map['sessionInitializationMode'] as String,
    );
  }
}
