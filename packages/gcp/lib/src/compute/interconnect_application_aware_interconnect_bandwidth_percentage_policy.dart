// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_application_aware_interconnect_bandwidth_percentage_policy_bandwidth_percentage.dart';

class InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy {
  /// Specify bandwidth percentages for various traffic classes for queuing
  /// type Bandwidth Percent.
  /// Structure is documented below.
  final List<
    InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage
  >?
  bandwidthPercentages;

  /// Creates a new [InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy].
  /// [bandwidthPercentages] Specify bandwidth percentages for various traffic classes for queuing
  InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy({
    this.bandwidthPercentages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPercentages': ?bandwidthPercentages == null
          ? null
          : pulumi.Input.encodeList<
              InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage,
              Map<String, dynamic>
            >(bandwidthPercentages!, (value) => value.toMap()),
    };
  }

  factory InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy(
      bandwidthPercentages: map['bandwidthPercentages'] == null
          ? null
          : pulumi.Input.decodeList<
              InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage
            >(
              map['bandwidthPercentages'],
              (value) =>
                  InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
