// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IpRestriction resources.
class IpRestrictionState {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Whether IP rules are turned on.
  final pulumi.Input<bool>? enabled;
  /// Map of allowed IPv4 CIDR ranges and descriptions.
  final pulumi.Input<Map<String, String>>? ipRestrictionRuleMap;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of allowed VPC endpoint IDs and descriptions.
  final pulumi.Input<Map<String, String>>? vpcEndpointIdRestrictionRuleMap;
  /// Map of VPC IDs and descriptions. Traffic from all VPC endpoints that are present in the specified VPC is allowed.
  final pulumi.Input<Map<String, String>>? vpcIdRestrictionRuleMap;

  /// Creates a new [IpRestrictionState].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [enabled] Whether IP rules are turned on.
  /// [ipRestrictionRuleMap] Map of allowed IPv4 CIDR ranges and descriptions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcEndpointIdRestrictionRuleMap] Map of allowed VPC endpoint IDs and descriptions.
  /// [vpcIdRestrictionRuleMap] Map of VPC IDs and descriptions. Traffic from all VPC endpoints that are present in the specified VPC is allowed.
  const IpRestrictionState({
    this.awsAccountId,
    this.enabled,
    this.ipRestrictionRuleMap,
    this.region,
    this.vpcEndpointIdRestrictionRuleMap,
    this.vpcIdRestrictionRuleMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'enabled': ?enabled,
      'ipRestrictionRuleMap': ?ipRestrictionRuleMap,
      'region': ?region,
      'vpcEndpointIdRestrictionRuleMap': ?vpcEndpointIdRestrictionRuleMap,
      'vpcIdRestrictionRuleMap': ?vpcIdRestrictionRuleMap,
    };
  }

  factory IpRestrictionState.fromMap(Map<String, dynamic> map) {
    return IpRestrictionState(
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipRestrictionRuleMap: (() { final guardedValue = map['ipRestrictionRuleMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcEndpointIdRestrictionRuleMap: (() { final guardedValue = map['vpcEndpointIdRestrictionRuleMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcIdRestrictionRuleMap: (() { final guardedValue = map['vpcIdRestrictionRuleMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
