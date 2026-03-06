// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scaling_rules_rule.dart';

/// Result data returned by getScalingRules.
class GetScalingRulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of scaling rule ids.
  final List<String> ids;
  final String? nameRegex;
  /// A list of scaling rule names.
  final List<String> names;
  final String? outputFile;
  /// A list of scaling rules. Each element contains the following attributes:
  final List<GetScalingRulesRule> rules;
  /// ID of the scaling group.
  final String? scalingGroupId;
  /// Type of the scaling rule.
  final String? type;

  /// Creates a new [GetScalingRulesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of scaling rule ids.
  /// [nameRegex] Optional.
  /// [names] A list of scaling rule names.
  /// [outputFile] Optional.
  /// [rules] A list of scaling rules. Each element contains the following attributes:
  /// [scalingGroupId] ID of the scaling group.
  /// [type] Type of the scaling rule.
  const GetScalingRulesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.rules,
    this.scalingGroupId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'rules': pulumi.Input.encodeList<GetScalingRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'scalingGroupId': ?scalingGroupId,
      'type': ?type,
    };
  }

  factory GetScalingRulesResult.fromMap(Map<String, dynamic> map) {
    return GetScalingRulesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: pulumi.Input.decodeList<GetScalingRulesRule>(map['rules']!, (value) => GetScalingRulesRule.fromMap((value as Map).cast<String, dynamic>())),
      scalingGroupId: (() { final guardedValue = map['scalingGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

