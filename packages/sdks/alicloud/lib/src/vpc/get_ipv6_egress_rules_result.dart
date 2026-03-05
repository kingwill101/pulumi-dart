// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipv6_egress_rules_rule.dart';

/// Result data returned by getIpv6EgressRules.
class GetIpv6EgressRulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? instanceId;
  final String? ipv6EgressRuleName;
  final String ipv6GatewayId;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetIpv6EgressRulesRule> rules;
  final String? status;

  /// Creates a new [GetIpv6EgressRulesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Optional.
  /// [ipv6EgressRuleName] Optional.
  /// [ipv6GatewayId] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [rules] Required.
  /// [status] Optional.
  GetIpv6EgressRulesResult({
    required this.id,
    required this.ids,
    this.instanceId,
    this.ipv6EgressRuleName,
    required this.ipv6GatewayId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.rules,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceId': ?instanceId,
      'ipv6EgressRuleName': ?ipv6EgressRuleName,
      'ipv6GatewayId': ipv6GatewayId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'rules': pulumi.Input.encodeList<GetIpv6EgressRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetIpv6EgressRulesResult.fromMap(Map<String, dynamic> map) {
    return GetIpv6EgressRulesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6EgressRuleName: (() { final guardedValue = map['ipv6EgressRuleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6GatewayId: map['ipv6GatewayId'] as String,
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: pulumi.Input.decodeList<GetIpv6EgressRulesRule>(map['rules']!, (value) => GetIpv6EgressRulesRule.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

