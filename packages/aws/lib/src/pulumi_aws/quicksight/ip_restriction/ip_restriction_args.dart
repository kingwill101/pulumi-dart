// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IpRestriction.
class IpRestrictionArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// Whether IP rules are turned on.
  final Input<bool> enabled;

  /// Map of allowed IPv4 CIDR ranges and descriptions.
  final Input<Map<String, String>>? ipRestrictionRuleMap;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of allowed VPC endpoint IDs and descriptions.
  final Input<Map<String, String>>? vpcEndpointIdRestrictionRuleMap;

  /// Map of VPC IDs and descriptions. Traffic from all VPC endpoints that are present in the specified VPC is allowed.
  final Input<Map<String, String>>? vpcIdRestrictionRuleMap;

  IpRestrictionArgs({
    this.awsAccountId,
    required this.enabled,
    this.ipRestrictionRuleMap,
    this.region,
    this.vpcEndpointIdRestrictionRuleMap,
    this.vpcIdRestrictionRuleMap,
  });

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
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      enabled: Input.asInput<bool>(map['enabled']),
      ipRestrictionRuleMap: Input.asOptionalInput<Map<String, String>>(
          map['ipRestrictionRuleMap']),
      region: Input.asOptionalInput<String>(map['region']),
      vpcEndpointIdRestrictionRuleMap:
          Input.asOptionalInput<Map<String, String>>(
              map['vpcEndpointIdRestrictionRuleMap']),
      vpcIdRestrictionRuleMap: Input.asOptionalInput<Map<String, String>>(
          map['vpcIdRestrictionRuleMap']),
    );
  }
}
