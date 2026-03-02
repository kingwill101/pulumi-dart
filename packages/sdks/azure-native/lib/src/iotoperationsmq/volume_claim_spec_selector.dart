// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_claim_spec_selector_match_expressions.dart';

/// VolumeClaimSpecSelector properties
class VolumeClaimSpecSelector {
  /// MatchExpressions is a list of label selector requirements. The requirements are ANDed.
  final pulumi.Input<List<VolumeClaimSpecSelectorMatchExpressions>>? matchExpressions;
  /// MatchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
  final pulumi.Input<Map<String, String>>? matchLabels;

  /// Creates a new [VolumeClaimSpecSelector].
  /// [matchExpressions] MatchExpressions is a list of label selector requirements. The requirements are ANDed.
  /// [matchLabels] MatchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
  VolumeClaimSpecSelector({
    this.matchExpressions,
    this.matchLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': ?pulumi.Input.mapOptionalInputValue<List<VolumeClaimSpecSelectorMatchExpressions>, List<Map<String, dynamic>>>(matchExpressions, (value) => pulumi.Input.encodeList<VolumeClaimSpecSelectorMatchExpressions, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchLabels': ?matchLabels,
    };
  }

  factory VolumeClaimSpecSelector.fromMap(Map<String, dynamic> map) {
    return VolumeClaimSpecSelector(
      matchExpressions: map['matchExpressions'] == null ? null : (pulumi.Input.decodeList<VolumeClaimSpecSelectorMatchExpressions>(map['matchExpressions'], (value) => VolumeClaimSpecSelectorMatchExpressions.fromMap((value as Map).cast<String, dynamic>()))).input(),
      matchLabels: map['matchLabels'] == null ? null : ((map['matchLabels'] as Map).cast<String, String>()).input(),
    );
  }
}

