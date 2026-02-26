// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../interconnect_application_aware_interconnect_bandwidth_percentage_policy_bandwidth_percentage/interconnect_application_aware_interconnect_bandwidth_percentage_policy_bandwidth_percentage.dart';

class InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy {
  /// Specify bandwidth percentages for various traffic classes for queuing
  /// type Bandwidth Percent.
  /// Structure is documented below.
  final List<
          InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage>?
      bandwidthPercentages;

  InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy({
    this.bandwidthPercentages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bandwidthPercentagesValue = bandwidthPercentages;
    if (bandwidthPercentagesValue != null) {
      map['bandwidthPercentages'] = Input.encodeList<
          InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage,
          Map<String,
              dynamic>>(bandwidthPercentagesValue, (value) => value.toMap());
    }
    return map;
  }

  factory InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy.fromMap(
      Map<String, dynamic> map) {
    return InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy(
      bandwidthPercentages: map['bandwidthPercentages'] == null
          ? null
          : Input.decodeList<
                  InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage>(
              map['bandwidthPercentages'],
              (value) =>
                  InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
