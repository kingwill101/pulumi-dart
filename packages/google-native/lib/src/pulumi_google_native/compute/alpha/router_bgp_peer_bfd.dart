// ignore_for_file: unused_element, unnecessary_cast

import 'router_bgp_peer_bfd_mode.dart';
import 'router_bgp_peer_bfd_packet_mode.dart';
import 'router_bgp_peer_bfd_session_initialization_mode.dart';

class RouterBgpPeerBfd {
  /// The minimum interval, in milliseconds, between BFD control packets received from the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the transmit interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  final int? minReceiveInterval;

  /// The minimum interval, in milliseconds, between BFD control packets transmitted to the peer router. The actual value is negotiated between the two routers and is equal to the greater of this value and the corresponding receive interval of the other router. If set, this value must be between 1000 and 30000. The default is 1000.
  final int? minTransmitInterval;

  /// The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is PASSIVE.
  final RouterBgpPeerBfdMode? mode;

  /// The number of consecutive BFD packets that must be missed before BFD declares that a peer is unavailable. If set, the value must be a value between 5 and 16. The default is 5.
  final int? multiplier;

  /// The BFD packet mode for this BGP peer. If set to CONTROL_AND_ECHO, BFD echo mode is enabled for this BGP peer. In this mode, if the peer router also has BFD echo mode enabled, BFD echo packets will be sent to the other router. If the peer router does not have BFD echo mode enabled, only control packets will be sent. If set to CONTROL_ONLY, BFD echo mode is disabled for this BGP peer. If this router and the peer router have a multihop connection, this should be set to CONTROL_ONLY as BFD echo mode is only supported on singlehop connections. The default is CONTROL_AND_ECHO.
  final RouterBgpPeerBfdPacketMode? packetMode;

  /// The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is DISABLED.
  final RouterBgpPeerBfdSessionInitializationMode? sessionInitializationMode;

  /// The minimum interval, in milliseconds, between BFD control packets transmitted to and received from the peer router when BFD echo mode is enabled on both routers. The actual transmit and receive intervals are negotiated between the two routers and are equal to the greater of this value and the corresponding interval on the other router. If set, this value must be between 1000 and 30000. The default is 5000.
  final int? slowTimerInterval;

  RouterBgpPeerBfd({
    this.minReceiveInterval,
    this.minTransmitInterval,
    this.mode,
    this.multiplier,
    this.packetMode,
    this.sessionInitializationMode,
    this.slowTimerInterval,
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
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    final multiplierValue = multiplier;
    if (multiplierValue != null) {
      map['multiplier'] = multiplierValue;
    }
    final packetModeValue = packetMode;
    if (packetModeValue != null) {
      map['packetMode'] = packetModeValue.value;
    }
    final sessionInitializationModeValue = sessionInitializationMode;
    if (sessionInitializationModeValue != null) {
      map['sessionInitializationMode'] = sessionInitializationModeValue.value;
    }
    final slowTimerIntervalValue = slowTimerInterval;
    if (slowTimerIntervalValue != null) {
      map['slowTimerInterval'] = slowTimerIntervalValue;
    }
    return map;
  }

  factory RouterBgpPeerBfd.fromMap(Map<String, dynamic> map) {
    return RouterBgpPeerBfd(
      minReceiveInterval: map['minReceiveInterval'] == null
          ? null
          : map['minReceiveInterval'] as int,
      minTransmitInterval: map['minTransmitInterval'] == null
          ? null
          : map['minTransmitInterval'] as int,
      mode: map['mode'] == null
          ? null
          : RouterBgpPeerBfdMode.fromValue(map['mode'] as String),
      multiplier: map['multiplier'] == null ? null : map['multiplier'] as int,
      packetMode: map['packetMode'] == null
          ? null
          : RouterBgpPeerBfdPacketMode.fromValue(map['packetMode'] as String),
      sessionInitializationMode: map['sessionInitializationMode'] == null
          ? null
          : RouterBgpPeerBfdSessionInitializationMode.fromValue(
              map['sessionInitializationMode'] as String),
      slowTimerInterval: map['slowTimerInterval'] == null
          ? null
          : map['slowTimerInterval'] as int,
    );
  }
}
