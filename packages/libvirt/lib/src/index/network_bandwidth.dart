// ignore_for_file: unused_element, unnecessary_cast

import 'network_bandwidth_inbound.dart';
import 'network_bandwidth_outbound.dart';

class NetworkBandwidth {
  /// Sets the class identifier for the bandwidth configuration, categorizing the type of bandwidth used for the network.
  final double? classId;
  /// Configures the settings for outbound bandwidth, controlling the data flow sent by the network.
  final NetworkBandwidthInbound? inbound;
  /// Configures the settings for outbound bandwidth, controlling the data flow sent by the network.
  final NetworkBandwidthOutbound? outbound;

  /// Creates a new [NetworkBandwidth].
  /// [classId] Sets the class identifier for the bandwidth configuration, categorizing the type of bandwidth used for the network.
  /// [inbound] Configures the settings for outbound bandwidth, controlling the data flow sent by the network.
  /// [outbound] Configures the settings for outbound bandwidth, controlling the data flow sent by the network.
  NetworkBandwidth({
    this.classId,
    this.inbound,
    this.outbound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classId': ?classId,
      'inbound': ?inbound == null ? null : inbound!.toMap(),
      'outbound': ?outbound == null ? null : outbound!.toMap(),
    };
  }

  factory NetworkBandwidth.fromMap(Map<String, dynamic> map) {
    return NetworkBandwidth(
      classId: map['classId'] == null ? null : map['classId'] as double,
      inbound: map['inbound'] == null ? null : NetworkBandwidthInbound.fromMap((map['inbound'] as Map).cast<String, dynamic>()),
      outbound: map['outbound'] == null ? null : NetworkBandwidthOutbound.fromMap((map['outbound'] as Map).cast<String, dynamic>()),
    );
  }
}

