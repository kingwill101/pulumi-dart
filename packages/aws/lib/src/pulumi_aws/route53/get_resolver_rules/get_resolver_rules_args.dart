// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getResolverRules.
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

  GetResolverRulesArgs({
    this.nameRegex,
    this.ownerId,
    this.region,
    this.resolverEndpointId,
    this.ruleType,
    this.shareStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameRegexValue = nameRegex;
    if (nameRegexValue != null) {
      map['nameRegex'] = nameRegexValue;
    }
    final ownerIdValue = ownerId;
    if (ownerIdValue != null) {
      map['ownerId'] = ownerIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resolverEndpointIdValue = resolverEndpointId;
    if (resolverEndpointIdValue != null) {
      map['resolverEndpointId'] = resolverEndpointIdValue;
    }
    final ruleTypeValue = ruleType;
    if (ruleTypeValue != null) {
      map['ruleType'] = ruleTypeValue;
    }
    final shareStatusValue = shareStatus;
    if (shareStatusValue != null) {
      map['shareStatus'] = shareStatusValue;
    }
    return map;
  }

  factory GetResolverRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverRulesArgs(
      nameRegex: pulumi.Input.asOptionalInput<String>(map['nameRegex']),
      ownerId: pulumi.Input.asOptionalInput<String>(map['ownerId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resolverEndpointId:
          pulumi.Input.asOptionalInput<String>(map['resolverEndpointId']),
      ruleType: pulumi.Input.asOptionalInput<String>(map['ruleType']),
      shareStatus: pulumi.Input.asOptionalInput<String>(map['shareStatus']),
    );
  }
}
