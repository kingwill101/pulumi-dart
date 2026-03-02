// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule.dart';

/// Result data returned by getRules.
class GetRulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<String>? listenerIds;
  final List<String>? loadBalancerIds;
  final String? nameRegex;
  /// A list of Rule names.
  final List<String> names;
  final String? outputFile;
  final List<String>? ruleIds;
  /// A list of Alb Rules. Each element contains the following attributes:
  final List<GetRulesRule> rules;
  /// The status of the forwarding rule.
  final String? status;

  /// Creates a new [GetRulesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [listenerIds] Optional.
  /// [loadBalancerIds] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of Rule names.
  /// [outputFile] Optional.
  /// [ruleIds] Optional.
  /// [rules] A list of Alb Rules. Each element contains the following attributes:
  /// [status] The status of the forwarding rule.
  GetRulesResult({
    required this.id,
    required this.ids,
    this.listenerIds,
    this.loadBalancerIds,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.ruleIds,
    required this.rules,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'listenerIds': ?listenerIds,
      'loadBalancerIds': ?loadBalancerIds,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'ruleIds': ?ruleIds,
      'rules': pulumi.Input.encodeList<GetRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetRulesResult.fromMap(Map<String, dynamic> map) {
    return GetRulesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      listenerIds: map['listenerIds'] == null ? null : (map['listenerIds']! as List).cast<String>(),
      loadBalancerIds: map['loadBalancerIds'] == null ? null : (map['loadBalancerIds']! as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      ruleIds: map['ruleIds'] == null ? null : (map['ruleIds']! as List).cast<String>(),
      rules: pulumi.Input.decodeList<GetRulesRule>(map['rules'], (value) => GetRulesRule.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

