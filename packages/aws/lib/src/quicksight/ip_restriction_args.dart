// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_ip_restriction_ip_restriction_args_doc}
/// The set of arguments for IpRestriction.
/// {@endtemplate}
/// {@macro pulumi_quicksight_ip_restriction_ip_restriction_args_doc}
class IpRestrictionArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// Whether IP rules are turned on.
  final pulumi.Input<bool> enabled;

  /// Map of allowed IPv4 CIDR ranges and descriptions.
  final pulumi.Input<Map<String, String>>? ipRestrictionRuleMap;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of allowed VPC endpoint IDs and descriptions.
  final pulumi.Input<Map<String, String>>? vpcEndpointIdRestrictionRuleMap;

  /// Map of VPC IDs and descriptions. Traffic from all VPC endpoints that are present in the specified VPC is allowed.
  final pulumi.Input<Map<String, String>>? vpcIdRestrictionRuleMap;

  /// Creates a new [IpRestrictionArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [enabled] Whether IP rules are turned on.
  /// [ipRestrictionRuleMap] Map of allowed IPv4 CIDR ranges and descriptions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcEndpointIdRestrictionRuleMap] Map of allowed VPC endpoint IDs and descriptions.
  /// [vpcIdRestrictionRuleMap] Map of VPC IDs and descriptions. Traffic from all VPC endpoints that are present in the specified VPC is allowed.
  IpRestrictionArgs({
    String? awsAccountId,
    required bool enabled,
    Map<String, String>? ipRestrictionRuleMap,
    String? region,
    Map<String, String>? vpcEndpointIdRestrictionRuleMap,
    Map<String, String>? vpcIdRestrictionRuleMap,
  })  : awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
        enabled = pulumi.Input.asInput<bool>(enabled),
        ipRestrictionRuleMap =
            pulumi.Input.asOptionalInput<Map<String, String>>(
                ipRestrictionRuleMap),
        region = pulumi.Input.asOptionalInput<String>(region),
        vpcEndpointIdRestrictionRuleMap =
            pulumi.Input.asOptionalInput<Map<String, String>>(
                vpcEndpointIdRestrictionRuleMap),
        vpcIdRestrictionRuleMap =
            pulumi.Input.asOptionalInput<Map<String, String>>(
                vpcIdRestrictionRuleMap);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['enabled'] = enabled;
    final ipRestrictionRuleMapValue = ipRestrictionRuleMap;
    if (ipRestrictionRuleMapValue != null) {
      map['ipRestrictionRuleMap'] = ipRestrictionRuleMapValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final vpcEndpointIdRestrictionRuleMapValue =
        vpcEndpointIdRestrictionRuleMap;
    if (vpcEndpointIdRestrictionRuleMapValue != null) {
      map['vpcEndpointIdRestrictionRuleMap'] =
          vpcEndpointIdRestrictionRuleMapValue;
    }
    final vpcIdRestrictionRuleMapValue = vpcIdRestrictionRuleMap;
    if (vpcIdRestrictionRuleMapValue != null) {
      map['vpcIdRestrictionRuleMap'] = vpcIdRestrictionRuleMapValue;
    }
    return map;
  }

  factory IpRestrictionArgs.fromMap(Map<String, dynamic> map) {
    return IpRestrictionArgs(
      awsAccountId:
          map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      enabled: map['enabled'] as bool,
      ipRestrictionRuleMap: map['ipRestrictionRuleMap'] == null
          ? null
          : (map['ipRestrictionRuleMap'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region'] as String,
      vpcEndpointIdRestrictionRuleMap:
          map['vpcEndpointIdRestrictionRuleMap'] == null
              ? null
              : (map['vpcEndpointIdRestrictionRuleMap'] as Map)
                  .cast<String, String>(),
      vpcIdRestrictionRuleMap: map['vpcIdRestrictionRuleMap'] == null
          ? null
          : (map['vpcIdRestrictionRuleMap'] as Map).cast<String, String>(),
    );
  }
}
