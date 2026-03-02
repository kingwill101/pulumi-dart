// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'match_attributes_response.dart';

/// Definition of RuleDefinition
class RuleDefinitionResponse {
  /// Property actions
  final pulumi.Input<List<String>>? actions;
  /// Property matchAttributes
  final pulumi.Input<MatchAttributesResponse>? matchAttributes;

  /// Creates a new [RuleDefinitionResponse].
  /// [actions] Property actions
  /// [matchAttributes] Property matchAttributes
  RuleDefinitionResponse({
    this.actions,
    this.matchAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'matchAttributes': ?pulumi.Input.mapOptionalInputValue<MatchAttributesResponse, Map<String, dynamic>>(matchAttributes, (value) => value.toMap()),
    };
  }

  factory RuleDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return RuleDefinitionResponse(
      actions: map['actions'] == null ? null : ((map['actions']! as List).cast<String>()).input(),
      matchAttributes: map['matchAttributes'] == null ? null : (MatchAttributesResponse.fromMap((map['matchAttributes']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

