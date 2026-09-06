// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_selector_requirement_load_balancer_response.dart';

/// A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
class LabelSelectorLoadBalancerResponse {
  /// matchExpressions is a list of label selector requirements. The requirements are ANDed.
  final pulumi.Input<List<LabelSelectorRequirementLoadBalancerResponse>?>? matchExpressions;
  /// matchLabels is an array of {key=value} pairs. A single {key=value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is `key`, the operator is `In`, and the values array contains only `value`. The requirements are ANDed.
  final pulumi.Input<List<String>?>? matchLabels;

  /// Creates a new [LabelSelectorLoadBalancerResponse].
  /// [matchExpressions] matchExpressions is a list of label selector requirements. The requirements are ANDed.
  /// [matchLabels] matchLabels is an array of {key=value} pairs. A single {key=value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is `key`, the operator is `In`, and the values array contains only `value`. The requirements are ANDed.
  const LabelSelectorLoadBalancerResponse({
    this.matchExpressions,
    this.matchLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': ?pulumi.Input.mapOptionalInputValue<List<LabelSelectorRequirementLoadBalancerResponse>, List<Map<String, dynamic>>>(matchExpressions, (value) => pulumi.Input.encodeList<LabelSelectorRequirementLoadBalancerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchLabels': ?matchLabels,
    };
  }

  factory LabelSelectorLoadBalancerResponse.fromMap(Map<String, dynamic> map) {
    return LabelSelectorLoadBalancerResponse(
      matchExpressions: (() { final guardedValue = map['matchExpressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LabelSelectorRequirementLoadBalancerResponse>(guardedValue, (value) => LabelSelectorRequirementLoadBalancerResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchLabels: (() { final guardedValue = map['matchLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
