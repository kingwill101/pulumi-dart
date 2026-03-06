// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_claim_spec_selector_match_expressions_response.dart';

/// VolumeClaimSpecSelector properties
class VolumeClaimSpecSelectorResponse {
  /// MatchExpressions is a list of label selector requirements. The requirements are ANDed.
  final pulumi.Input<List<VolumeClaimSpecSelectorMatchExpressionsResponse>>? matchExpressions;
  /// MatchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
  final pulumi.Input<Map<String, String>>? matchLabels;

  /// Creates a new [VolumeClaimSpecSelectorResponse].
  /// [matchExpressions] MatchExpressions is a list of label selector requirements. The requirements are ANDed.
  /// [matchLabels] MatchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
  const VolumeClaimSpecSelectorResponse({
    this.matchExpressions,
    this.matchLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': ?pulumi.Input.mapOptionalInputValue<List<VolumeClaimSpecSelectorMatchExpressionsResponse>, List<Map<String, dynamic>>>(matchExpressions, (value) => pulumi.Input.encodeList<VolumeClaimSpecSelectorMatchExpressionsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchLabels': ?matchLabels,
    };
  }

  factory VolumeClaimSpecSelectorResponse.fromMap(Map<String, dynamic> map) {
    return VolumeClaimSpecSelectorResponse(
      matchExpressions: (() { final guardedValue = map['matchExpressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeClaimSpecSelectorMatchExpressionsResponse>(guardedValue, (value) => VolumeClaimSpecSelectorMatchExpressionsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchLabels: (() { final guardedValue = map['matchLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

