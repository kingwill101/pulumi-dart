// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_v1_property_selector_requirement_response.dart';

/// PropertySelector helps user specify property requirements when picking clusters for resource placement.
class PlacementV1PropertySelectorResponse {
  /// MatchExpressions is an array of PropertySelectorRequirements. The requirements are AND'd.
  final List<PlacementV1PropertySelectorRequirementResponse> matchExpressions;

  /// Creates a new [PlacementV1PropertySelectorResponse].
  /// [matchExpressions] MatchExpressions is an array of PropertySelectorRequirements. The requirements are AND'd.
  PlacementV1PropertySelectorResponse({
    required this.matchExpressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': pulumi.Input.encodeList<PlacementV1PropertySelectorRequirementResponse, Map<String, dynamic>>(matchExpressions, (value) => value.toMap()),
    };
  }

  factory PlacementV1PropertySelectorResponse.fromMap(Map<String, dynamic> map) {
    return PlacementV1PropertySelectorResponse(
      matchExpressions: pulumi.Input.decodeList<PlacementV1PropertySelectorRequirementResponse>(map['matchExpressions'], (value) => PlacementV1PropertySelectorRequirementResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

