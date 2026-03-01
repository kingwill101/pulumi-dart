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
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resolverEndpointId,
    pulumi.Output<String>? ruleType,
    pulumi.Output<String>? shareStatus,
  }) :
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      resolverEndpointId = pulumi.Input.asOptionalInput<String>(resolverEndpointId),
      ruleType = pulumi.Input.asOptionalInput<String>(ruleType),
      shareStatus = pulumi.Input.asOptionalInput<String>(shareStatus);

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
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resolverEndpointId: map['resolverEndpointId'] == null ? null : pulumi.Output.create<String>(map['resolverEndpointId'] as String),
      ruleType: map['ruleType'] == null ? null : pulumi.Output.create<String>(map['ruleType'] as String),
      shareStatus: map['shareStatus'] == null ? null : pulumi.Output.create<String>(map['shareStatus'] as String),
    );
  }
}

