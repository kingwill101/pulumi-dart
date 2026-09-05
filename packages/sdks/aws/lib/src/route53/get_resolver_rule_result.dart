// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_rule_target_ip.dart';

/// Result data returned by getResolverRule.
class GetResolverRuleResult {
  /// ARN for the resolver rule.
  final String? arn;
  final String? domainName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// When a rule is shared with another AWS account, the account ID of the account that the rule is shared with.
  final String? ownerId;
  final String? region;
  final String? resolverEndpointId;
  final String? resolverRuleId;
  final String? ruleType;
  /// Whether the rules is shared and, if so, whether the current account is sharing the rule with another account, or another account is sharing the rule with the current account.
  /// Values are `NOT_SHARED`, `SHARED_BY_ME` or `SHARED_WITH_ME`
  final String? shareStatus;
  /// Map of tags assigned to the resolver rule.
  final Map<String, String>? tags;
  /// List of configurations for target IP addresses. Only applicable for `FORWARD` rules. See `targetIps` below for details.
  final List<GetResolverRuleTargetIp>? targetIps;

  /// Creates a new [GetResolverRuleResult].
  /// [arn] ARN for the resolver rule.
  /// [domainName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [ownerId] When a rule is shared with another AWS account, the account ID of the account that the rule is shared with.
  /// [region] Optional.
  /// [resolverEndpointId] Optional.
  /// [resolverRuleId] Optional.
  /// [ruleType] Optional.
  /// [shareStatus] Whether the rules is shared and, if so, whether the current account is sharing the rule with another account, or another account is sharing the rule with the current account.
  /// [tags] Map of tags assigned to the resolver rule.
  /// [targetIps] List of configurations for target IP addresses. Only applicable for `FORWARD` rules. See `targetIps` below for details.
  const GetResolverRuleResult({
    this.arn,
    this.domainName,
    this.id,
    this.name,
    this.ownerId,
    this.region,
    this.resolverEndpointId,
    this.resolverRuleId,
    this.ruleType,
    this.shareStatus,
    this.tags,
    this.targetIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'domainName': ?domainName,
      'id': ?id,
      'name': ?name,
      'ownerId': ?ownerId,
      'region': ?region,
      'resolverEndpointId': ?resolverEndpointId,
      'resolverRuleId': ?resolverRuleId,
      'ruleType': ?ruleType,
      'shareStatus': ?shareStatus,
      'tags': ?tags,
      'targetIps': ?(() { final guardedValue = targetIps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResolverRuleTargetIp, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetResolverRuleResult.fromMap(Map<String, dynamic> map) {
    return GetResolverRuleResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resolverEndpointId: (() { final guardedValue = map['resolverEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resolverRuleId: (() { final guardedValue = map['resolverRuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleType: (() { final guardedValue = map['ruleType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareStatus: (() { final guardedValue = map['shareStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetIps: (() { final guardedValue = map['targetIps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResolverRuleTargetIp>(guardedValue, (value) => GetResolverRuleTargetIp.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
