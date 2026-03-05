// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_selector_requirement_response.dart';

/// A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
class LabelSelectorResponse {
  /// matchExpressions is a list of label selector requirements. The requirements are ANDed.
  final pulumi.Input<List<LabelSelectorRequirementResponse>>? matchExpressions;
  /// matchLabels is an array of {key=value} pairs. A single {key=value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is `key`, the operator is `In`, and the values array contains only `value`. The requirements are ANDed.
  final pulumi.Input<List<String>>? matchLabels;

  /// Creates a new [LabelSelectorResponse].
  /// [matchExpressions] matchExpressions is a list of label selector requirements. The requirements are ANDed.
  /// [matchLabels] matchLabels is an array of {key=value} pairs. A single {key=value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is `key`, the operator is `In`, and the values array contains only `value`. The requirements are ANDed.
  LabelSelectorResponse({
    this.matchExpressions,
    this.matchLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': ?pulumi.Input.mapOptionalInputValue<List<LabelSelectorRequirementResponse>, List<Map<String, dynamic>>>(matchExpressions, (value) => pulumi.Input.encodeList<LabelSelectorRequirementResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchLabels': ?matchLabels,
    };
  }

  factory LabelSelectorResponse.fromMap(Map<String, dynamic> map) {
    return LabelSelectorResponse(
      matchExpressions: (() { final guardedValue = map['matchExpressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LabelSelectorRequirementResponse>(guardedValue, (value) => LabelSelectorRequirementResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchLabels: (() { final guardedValue = map['matchLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

