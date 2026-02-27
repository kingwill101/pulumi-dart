// ignore_for_file: unused_element, unnecessary_cast

class MulticastDomainActivationTrafficSpec {
  /// Aggregated egress Packet-Per-Second for all multicast groups in the domain
  /// in this zone.
  final String? aggrEgressPps;

  /// Aggregated ingress Packet-Per-Second for all multicast groups in the domain
  /// in this zone. Default to (aggregated_egress_pps /
  /// max_per_group_subscribers) * 2.
  final String? aggrIngressPps;

  /// Average packet size (Default to 512 bytes).
  final int? avgPacketSize;

  /// Maximum ingress Packet-Per-Second for a single multicast group in this
  /// zone. Default to aggregated_ingress_pps / 2.
  final String? maxPerGroupIngressPps;

  /// Maximum number of subscribers for a single multicast group in this zone.
  /// Default to max(50, aggregated_egress_pps / aggregated_ingress_pps).
  final String? maxPerGroupSubscribers;

  MulticastDomainActivationTrafficSpec({
    this.aggrEgressPps,
    this.aggrIngressPps,
    this.avgPacketSize,
    this.maxPerGroupIngressPps,
    this.maxPerGroupSubscribers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggrEgressPpsValue = aggrEgressPps;
    if (aggrEgressPpsValue != null) {
      map['aggrEgressPps'] = aggrEgressPpsValue;
    }
    final aggrIngressPpsValue = aggrIngressPps;
    if (aggrIngressPpsValue != null) {
      map['aggrIngressPps'] = aggrIngressPpsValue;
    }
    final avgPacketSizeValue = avgPacketSize;
    if (avgPacketSizeValue != null) {
      map['avgPacketSize'] = avgPacketSizeValue;
    }
    final maxPerGroupIngressPpsValue = maxPerGroupIngressPps;
    if (maxPerGroupIngressPpsValue != null) {
      map['maxPerGroupIngressPps'] = maxPerGroupIngressPpsValue;
    }
    final maxPerGroupSubscribersValue = maxPerGroupSubscribers;
    if (maxPerGroupSubscribersValue != null) {
      map['maxPerGroupSubscribers'] = maxPerGroupSubscribersValue;
    }
    return map;
  }

  factory MulticastDomainActivationTrafficSpec.fromMap(
      Map<String, dynamic> map) {
    return MulticastDomainActivationTrafficSpec(
      aggrEgressPps:
          map['aggrEgressPps'] == null ? null : map['aggrEgressPps'] as String,
      aggrIngressPps: map['aggrIngressPps'] == null
          ? null
          : map['aggrIngressPps'] as String,
      avgPacketSize:
          map['avgPacketSize'] == null ? null : map['avgPacketSize'] as int,
      maxPerGroupIngressPps: map['maxPerGroupIngressPps'] == null
          ? null
          : map['maxPerGroupIngressPps'] as String,
      maxPerGroupSubscribers: map['maxPerGroupSubscribers'] == null
          ? null
          : map['maxPerGroupSubscribers'] as String,
    );
  }
}
