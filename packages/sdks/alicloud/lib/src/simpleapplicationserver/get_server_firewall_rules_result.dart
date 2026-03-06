// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_firewall_rules_rule.dart';

/// Result data returned by getServerFirewallRules.
class GetServerFirewallRulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? outputFile;
  final List<GetServerFirewallRulesRule> rules;

  /// Creates a new [GetServerFirewallRulesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [outputFile] Optional.
  /// [rules] Required.
  const GetServerFirewallRulesResult({
    required this.id,
    required this.ids,
    required this.instanceId,
    this.outputFile,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'rules': pulumi.Input.encodeList<GetServerFirewallRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory GetServerFirewallRulesResult.fromMap(Map<String, dynamic> map) {
    return GetServerFirewallRulesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: pulumi.Input.decodeList<GetServerFirewallRulesRule>(map['rules']!, (value) => GetServerFirewallRulesRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

