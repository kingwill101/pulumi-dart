// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_selector_requirement_response.dart';

/// A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
class LabelSelectorResponse {
  /// matchExpressions is a list of label selector requirements. The requirements are ANDed.
  final List<LabelSelectorRequirementResponse>? matchExpressions;
  /// matchLabels is an array of {key=value} pairs. A single {key=value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is `key`, the operator is `In`, and the values array contains only `value`. The requirements are ANDed.
  final List<String>? matchLabels;

  /// Creates a new [LabelSelectorResponse].
  /// [matchExpressions] matchExpressions is a list of label selector requirements. The requirements are ANDed.
  /// [matchLabels] matchLabels is an array of {key=value} pairs. A single {key=value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is `key`, the operator is `In`, and the values array contains only `value`. The requirements are ANDed.
  LabelSelectorResponse({
    this.matchExpressions,
    this.matchLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': ?matchExpressions == null ? null : pulumi.Input.encodeList<LabelSelectorRequirementResponse, Map<String, dynamic>>(matchExpressions!, (value) => value.toMap()),
      'matchLabels': ?matchLabels,
    };
  }

  factory LabelSelectorResponse.fromMap(Map<String, dynamic> map) {
    return LabelSelectorResponse(
      matchExpressions: map['matchExpressions'] == null ? null : pulumi.Input.decodeList<LabelSelectorRequirementResponse>(map['matchExpressions'], (value) => LabelSelectorRequirementResponse.fromMap((value as Map).cast<String, dynamic>())),
      matchLabels: map['matchLabels'] == null ? null : (map['matchLabels'] as List).cast<String>(),
    );
  }
}

