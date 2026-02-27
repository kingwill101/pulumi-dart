// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../resolver_rule_target_ip/resolver_rule_target_ip.dart';

/// The set of arguments for ResolverRule.
class ResolverRuleArgs {
  /// DNS queries for this domain name are forwarded to the IP addresses that are specified using `target_ip`.
  final Input<String> domainName;

  /// Friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the outbound resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify using `target_ip`.
  /// This argument should only be specified for `FORWARD` type rules.
  final Input<String>? resolverEndpointId;

  /// Rule type. Valid values are `FORWARD`, `SYSTEM` and `RECURSIVE`.
  final Input<String> ruleType;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block(s) indicating the IPs that you want Resolver to forward DNS queries to (documented below).
  /// This argument should only be specified for `FORWARD` type rules.
  final Input<List<ResolverRuleTargetIp>>? targetIps;

  ResolverRuleArgs({
    required this.domainName,
    this.name,
    this.region,
    this.resolverEndpointId,
    required this.ruleType,
    this.tags,
    this.targetIps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resolverEndpointIdValue = resolverEndpointId;
    if (resolverEndpointIdValue != null) {
      map['resolverEndpointId'] = resolverEndpointIdValue;
    }
    map['ruleType'] = ruleType;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetIpsValue = targetIps;
    if (targetIpsValue != null) {
      map['targetIps'] = Input.mapOptionalInputValue<List<ResolverRuleTargetIp>,
              List<Map<String, dynamic>>>(
          targetIpsValue,
          (value) =>
              Input.encodeList<ResolverRuleTargetIp, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory ResolverRuleArgs.fromMap(Map<String, dynamic> map) {
    return ResolverRuleArgs(
      domainName: Input.asInput<String>(map['domainName']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      resolverEndpointId:
          Input.asOptionalInput<String>(map['resolverEndpointId']),
      ruleType: Input.asInput<String>(map['ruleType']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetIps:
          Input.asOptionalInput<List<ResolverRuleTargetIp>>(map['targetIps']),
    );
  }
}
