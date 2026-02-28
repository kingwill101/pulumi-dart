// ignore_for_file: unused_element, unnecessary_cast

class InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage {
  /// Bandwidth percentage for a specific traffic class.
  final int? percentage;

  /// Enum representing the various traffic classes offered by AAI.
  /// Default value is `TC_UNSPECIFIED`.
  /// Possible values are: `TC_UNSPECIFIED`, `TC1`, `TC2`, `TC3`, `TC4`, `TC5`, `TC6`.
  final String? trafficClass;

  /// Creates a new [InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage].
  /// [percentage] Bandwidth percentage for a specific traffic class.
  /// [trafficClass] Enum representing the various traffic classes offered by AAI.
  InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage({
    this.percentage,
    this.trafficClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final percentageValue = percentage;
    if (percentageValue != null) {
      map['percentage'] = percentageValue;
    }
    final trafficClassValue = trafficClass;
    if (trafficClassValue != null) {
      map['trafficClass'] = trafficClassValue;
    }
    return map;
  }

  factory InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage.fromMap(
      Map<String, dynamic> map) {
    return InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage(
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
      trafficClass:
          map['trafficClass'] == null ? null : map['trafficClass'] as String,
    );
  }
}
