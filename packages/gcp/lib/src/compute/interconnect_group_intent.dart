// ignore_for_file: unused_element, unnecessary_cast

class InterconnectGroupIntent {
  /// The reliability the user intends this group to be capable of, in terms
  /// of the Interconnect product SLAs.
  /// Possible values are: `PRODUCTION_NON_CRITICAL`, `PRODUCTION_CRITICAL`, `NO_SLA`, `AVAILABILITY_SLA_UNSPECIFIED`.
  final String? topologyCapability;

  /// Creates a new [InterconnectGroupIntent].
  /// [topologyCapability] The reliability the user intends this group to be capable of, in terms
  InterconnectGroupIntent({
    this.topologyCapability,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final topologyCapabilityValue = topologyCapability;
    if (topologyCapabilityValue != null) {
      map['topologyCapability'] = topologyCapabilityValue;
    }
    return map;
  }

  factory InterconnectGroupIntent.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupIntent(
      topologyCapability: map['topologyCapability'] == null
          ? null
          : map['topologyCapability'] as String,
    );
  }
}
