// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_rule_target_ip.dart';

/// Input properties used for looking up and filtering ResolverRule resources.
class ResolverRuleState {
  /// ARN (Amazon Resource Name) for the resolver rule.
  final pulumi.Input<String>? arn;

  /// DNS queries for this domain name are forwarded to the IP addresses that are specified using `target_ip`.
  final pulumi.Input<String>? domainName;

  /// Friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console.
  final pulumi.Input<String>? name;

  /// When a rule is shared with another AWS account, the account ID of the account that the rule is shared with.
  final pulumi.Input<String>? ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the outbound resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify using `target_ip`.
  /// This argument should only be specified for `FORWARD` type rules.
  final pulumi.Input<String>? resolverEndpointId;

  /// Rule type. Valid values are `FORWARD`, `SYSTEM` and `RECURSIVE`.
  final pulumi.Input<String>? ruleType;

  /// Whether the rules is shared and, if so, whether the current account is sharing the rule with another account, or another account is sharing the rule with the current account.
  /// Values are `NOT_SHARED`, `SHARED_BY_ME` or `SHARED_WITH_ME`
  final pulumi.Input<String>? shareStatus;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Configuration block(s) indicating the IPs that you want Resolver to forward DNS queries to (documented below).
  /// This argument should only be specified for `FORWARD` type rules.
  final pulumi.Input<List<ResolverRuleTargetIp>>? targetIps;

  /// Creates a new [ResolverRuleState].
  /// [arn] ARN (Amazon Resource Name) for the resolver rule.
  /// [domainName] DNS queries for this domain name are forwarded to the IP addresses that are specified using `target_ip`.
  /// [name] Friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console.
  /// [ownerId] When a rule is shared with another AWS account, the account ID of the account that the rule is shared with.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverEndpointId] ID of the outbound resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify using `target_ip`.
  /// [ruleType] Rule type. Valid values are `FORWARD`, `SYSTEM` and `RECURSIVE`.
  /// [shareStatus] Whether the rules is shared and, if so, whether the current account is sharing the rule with another account, or another account is sharing the rule with the current account.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetIps] Configuration block(s) indicating the IPs that you want Resolver to forward DNS queries to (documented below).
  ResolverRuleState({
    this.arn,
    this.domainName,
    this.name,
    this.ownerId,
    this.region,
    this.resolverEndpointId,
    this.ruleType,
    this.shareStatus,
    this.tags,
    this.tagsAll,
    this.targetIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'domainName': ?domainName,
      'name': ?name,
      'ownerId': ?ownerId,
      'region': ?region,
      'resolverEndpointId': ?resolverEndpointId,
      'ruleType': ?ruleType,
      'shareStatus': ?shareStatus,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetIps':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResolverRuleTargetIp>,
            List<Map<String, dynamic>>
          >(
            targetIps,
            (value) =>
                pulumi.Input.encodeList<
                  ResolverRuleTargetIp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ResolverRuleState.fromMap(Map<String, dynamic> map) {
    return ResolverRuleState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ownerId: (() {
        final guardedValue = map['ownerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resolverEndpointId: (() {
        final guardedValue = map['resolverEndpointId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleType: (() {
        final guardedValue = map['ruleType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shareStatus: (() {
        final guardedValue = map['shareStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetIps: (() {
        final guardedValue = map['targetIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResolverRuleTargetIp>(
            guardedValue,
            (value) => ResolverRuleTargetIp.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
