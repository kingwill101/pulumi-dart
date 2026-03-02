// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ownership_controls_rule_response.dart';

/// Definition of OwnershipControls
class OwnershipControlsResponse {
  /// Specifies the container element for Object Ownership rules.
  final pulumi.Input<List<OwnershipControlsRuleResponse>>? rules;

  /// Creates a new [OwnershipControlsResponse].
  /// [rules] Specifies the container element for Object Ownership rules.
  OwnershipControlsResponse({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<OwnershipControlsRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<OwnershipControlsRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OwnershipControlsResponse.fromMap(Map<String, dynamic> map) {
    return OwnershipControlsResponse(
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<OwnershipControlsRuleResponse>(map['rules'], (value) => OwnershipControlsRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

