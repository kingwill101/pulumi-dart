// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'property_selector_requirement_response.dart';

/// PropertySelector helps user specify property requirements when picking clusters for resource placement.
class PropertySelectorResponse {
  /// MatchExpressions is an array of PropertySelectorRequirements. The requirements are AND'd.
  final pulumi.Input<List<PropertySelectorRequirementResponse>> matchExpressions;

  /// Creates a new [PropertySelectorResponse].
  /// [matchExpressions] MatchExpressions is an array of PropertySelectorRequirements. The requirements are AND'd.
  const PropertySelectorResponse({
    required this.matchExpressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': pulumi.Input.mapInputValue<List<PropertySelectorRequirementResponse>, List<Map<String, dynamic>>>(matchExpressions, (value) => pulumi.Input.encodeList<PropertySelectorRequirementResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PropertySelectorResponse.fromMap(Map<String, dynamic> map) {
    return PropertySelectorResponse(
      matchExpressions: pulumi.Input.fromValue(pulumi.Input.decodeList<PropertySelectorRequirementResponse>(map['matchExpressions']!, (value) => PropertySelectorRequirementResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
