// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_v1_property_selector_requirement.dart';

/// PropertySelector helps user specify property requirements when picking clusters for resource placement.
class PlacementV1PropertySelector {
  /// MatchExpressions is an array of PropertySelectorRequirements. The requirements are AND'd.
  final pulumi.Input<List<PlacementV1PropertySelectorRequirement>> matchExpressions;

  /// Creates a new [PlacementV1PropertySelector].
  /// [matchExpressions] MatchExpressions is an array of PropertySelectorRequirements. The requirements are AND'd.
  const PlacementV1PropertySelector({
    required this.matchExpressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': pulumi.Input.mapInputValue<List<PlacementV1PropertySelectorRequirement>, List<Map<String, dynamic>>>(matchExpressions, (value) => pulumi.Input.encodeList<PlacementV1PropertySelectorRequirement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlacementV1PropertySelector.fromMap(Map<String, dynamic> map) {
    return PlacementV1PropertySelector(
      matchExpressions: pulumi.Input.fromValue(pulumi.Input.decodeList<PlacementV1PropertySelectorRequirement>(map['matchExpressions']!, (value) => PlacementV1PropertySelectorRequirement.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
