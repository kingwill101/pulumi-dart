// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_get_resolver_rules_get_resolver_rules_args_doc}
/// Arguments for getResolverRules.
/// {@endtemplate}
/// {@macro pulumi_route53_get_resolver_rules_get_resolver_rules_args_doc}
class GetResolverRulesArgs {
  /// Regex string to filter resolver rule names.
  /// The filtering is done locally, so could have a performance impact if the result is large.
  /// This argument should be used along with other arguments to limit the number of results returned.
  final pulumi.Input<String>? nameRegex;
  /// When the desired resolver rules are shared with another AWS account, the account ID of the account that the rules are shared with.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the outbound resolver endpoint for the desired resolver rules.
  final pulumi.Input<String>? resolverEndpointId;
  /// Rule type of the desired resolver rules. Valid values are `FORWARD`, `SYSTEM` and `RECURSIVE`.
  final pulumi.Input<String>? ruleType;
  /// Whether the desired resolver rules are shared and, if so, whether the current account is sharing the rules with another account, or another account is sharing the rules with the current account. Valid values are `NOT_SHARED`, `SHARED_BY_ME` or `SHARED_WITH_ME`
  final pulumi.Input<String>? shareStatus;

  /// Creates a new [GetResolverRulesArgs].
  /// [nameRegex] Regex string to filter resolver rule names.
  /// [ownerId] When the desired resolver rules are shared with another AWS account, the account ID of the account that the rules are shared with.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverEndpointId] ID of the outbound resolver endpoint for the desired resolver rules.
  /// [ruleType] Rule type of the desired resolver rules. Valid values are `FORWARD`, `SYSTEM` and `RECURSIVE`.
  /// [shareStatus] Whether the desired resolver rules are shared and, if so, whether the current account is sharing the rules with another account, or another account is sharing the rules with the current account. Valid values are `NOT_SHARED`, `SHARED_BY_ME` or `SHARED_WITH_ME`
  GetResolverRulesArgs({
    this.nameRegex,
    this.ownerId,
    this.region,
    this.resolverEndpointId,
    this.ruleType,
    this.shareStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameRegex': ?nameRegex,
      'ownerId': ?ownerId,
      'region': ?region,
      'resolverEndpointId': ?resolverEndpointId,
      'ruleType': ?ruleType,
      'shareStatus': ?shareStatus,
    };
  }

  factory GetResolverRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverRulesArgs(
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resolverEndpointId: map['resolverEndpointId'] == null ? null : (map['resolverEndpointId'] as String).input(),
      ruleType: map['ruleType'] == null ? null : (map['ruleType'] as String).input(),
      shareStatus: map['shareStatus'] == null ? null : (map['shareStatus'] as String).input(),
    );
  }
}

