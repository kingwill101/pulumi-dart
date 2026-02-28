// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_application_aware_interconnect_bandwidth_percentage_policy.dart';
import 'interconnect_application_aware_interconnect_shape_average_percentage.dart';

class InterconnectApplicationAwareInterconnect {
  /// Bandwidth Percentage policy allows you to have granular control over how your Interconnect
  /// bandwidth is utilized among your workloads mapping to different traffic classes.
  /// Structure is documented below.
  final InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy?
      bandwidthPercentagePolicy;

  /// A description for the AAI profile on this interconnect.
  final String? profileDescription;

  /// Optional field to specify a list of shape average percentages to be
  /// applied in conjunction with StrictPriorityPolicy or BandwidthPercentagePolicy
  /// Structure is documented below.
  final List<InterconnectApplicationAwareInterconnectShapeAveragePercentage>?
      shapeAveragePercentages;

  /// Specify configuration for StrictPriorityPolicy.
  final Map<String, dynamic>? strictPriorityPolicy;

  /// Creates a new [InterconnectApplicationAwareInterconnect].
  /// [bandwidthPercentagePolicy] Bandwidth Percentage policy allows you to have granular control over how your Interconnect
  /// [profileDescription] A description for the AAI profile on this interconnect.
  /// [shapeAveragePercentages] Optional field to specify a list of shape average percentages to be
  /// [strictPriorityPolicy] Specify configuration for StrictPriorityPolicy.
  InterconnectApplicationAwareInterconnect({
    this.bandwidthPercentagePolicy,
    this.profileDescription,
    this.shapeAveragePercentages,
    this.strictPriorityPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bandwidthPercentagePolicyValue = bandwidthPercentagePolicy;
    if (bandwidthPercentagePolicyValue != null) {
      map['bandwidthPercentagePolicy'] = bandwidthPercentagePolicyValue.toMap();
    }
    final profileDescriptionValue = profileDescription;
    if (profileDescriptionValue != null) {
      map['profileDescription'] = profileDescriptionValue;
    }
    final shapeAveragePercentagesValue = shapeAveragePercentages;
    if (shapeAveragePercentagesValue != null) {
      map['shapeAveragePercentages'] = pulumi.Input.encodeList<
              InterconnectApplicationAwareInterconnectShapeAveragePercentage,
              Map<String, dynamic>>(
          shapeAveragePercentagesValue, (value) => value.toMap());
    }
    final strictPriorityPolicyValue = strictPriorityPolicy;
    if (strictPriorityPolicyValue != null) {
      map['strictPriorityPolicy'] = strictPriorityPolicyValue;
    }
    return map;
  }

  factory InterconnectApplicationAwareInterconnect.fromMap(
      Map<String, dynamic> map) {
    return InterconnectApplicationAwareInterconnect(
      bandwidthPercentagePolicy: map['bandwidthPercentagePolicy'] == null
          ? null
          : InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy
              .fromMap((map['bandwidthPercentagePolicy'] as Map)
                  .cast<String, dynamic>()),
      profileDescription: map['profileDescription'] == null
          ? null
          : map['profileDescription'] as String,
      shapeAveragePercentages: map['shapeAveragePercentages'] == null
          ? null
          : pulumi.Input.decodeList<
                  InterconnectApplicationAwareInterconnectShapeAveragePercentage>(
              map['shapeAveragePercentages'],
              (value) =>
                  InterconnectApplicationAwareInterconnectShapeAveragePercentage
                      .fromMap((value as Map).cast<String, dynamic>())),
      strictPriorityPolicy: map['strictPriorityPolicy'] == null
          ? null
          : (map['strictPriorityPolicy'] as Map).cast<String, dynamic>(),
    );
  }
}
