// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_rule_target_ip.dart';

/// Result data returned by getResolverRule.
class GetResolverRuleResult {
  /// ARN (Amazon Resource Name) for the resolver rule.
  final String arn;
  final String domainName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// When a rule is shared with another AWS account, the account ID of the account that the rule is shared with.
  final String ownerId;
  final String region;
  final String resolverEndpointId;
  final String resolverRuleId;
  final String ruleType;
  /// Whether the rules is shared and, if so, whether the current account is sharing the rule with another account, or another account is sharing the rule with the current account.
  /// Values are `NOT_SHARED`, `SHARED_BY_ME` or `SHARED_WITH_ME`
  final String shareStatus;
  /// Map of tags assigned to the resolver rule.
  final Map<String, String> tags;
  /// List of configurations for target IP addresses. Only applicable for `FORWARD` rules. See `target_ips` below for details.
  final List<GetResolverRuleTargetIp> targetIps;

  /// Creates a new [GetResolverRuleResult].
  /// [arn] ARN (Amazon Resource Name) for the resolver rule.
  /// [domainName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [ownerId] When a rule is shared with another AWS account, the account ID of the account that the rule is shared with.
  /// [region] Required.
  /// [resolverEndpointId] Required.
  /// [resolverRuleId] Required.
  /// [ruleType] Required.
  /// [shareStatus] Whether the rules is shared and, if so, whether the current account is sharing the rule with another account, or another account is sharing the rule with the current account.
  /// [tags] Map of tags assigned to the resolver rule.
  /// [targetIps] List of configurations for target IP addresses. Only applicable for `FORWARD` rules. See `target_ips` below for details.
  GetResolverRuleResult({
    required this.arn,
    required this.domainName,
    required this.id,
    required this.name,
    required this.ownerId,
    required this.region,
    required this.resolverEndpointId,
    required this.resolverRuleId,
    required this.ruleType,
    required this.shareStatus,
    required this.tags,
    required this.targetIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'domainName': domainName,
      'id': id,
      'name': name,
      'ownerId': ownerId,
      'region': region,
      'resolverEndpointId': resolverEndpointId,
      'resolverRuleId': resolverRuleId,
      'ruleType': ruleType,
      'shareStatus': shareStatus,
      'tags': tags,
      'targetIps': pulumi.Input.encodeList<GetResolverRuleTargetIp, Map<String, dynamic>>(targetIps, (value) => value.toMap()),
    };
  }

  factory GetResolverRuleResult.fromMap(Map<String, dynamic> map) {
    return GetResolverRuleResult(
      arn: map['arn'] as String,
      domainName: map['domainName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      resolverEndpointId: map['resolverEndpointId'] as String,
      resolverRuleId: map['resolverRuleId'] as String,
      ruleType: map['ruleType'] as String,
      shareStatus: map['shareStatus'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      targetIps: pulumi.Input.decodeList<GetResolverRuleTargetIp>(map['targetIps']!, (value) => GetResolverRuleTargetIp.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

