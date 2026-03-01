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
  IpRestrictionState({
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<bool>? enabled,
    pulumi.Output<Map<String, String>>? ipRestrictionRuleMap,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? vpcEndpointIdRestrictionRuleMap,
    pulumi.Output<Map<String, String>>? vpcIdRestrictionRuleMap,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      ipRestrictionRuleMap = pulumi.Input.asOptionalInput<Map<String, String>>(ipRestrictionRuleMap),
      region = pulumi.Input.asOptionalInput<String>(region),
      vpcEndpointIdRestrictionRuleMap = pulumi.Input.asOptionalInput<Map<String, String>>(vpcEndpointIdRestrictionRuleMap),
      vpcIdRestrictionRuleMap = pulumi.Input.asOptionalInput<Map<String, String>>(vpcIdRestrictionRuleMap);

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
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      ipRestrictionRuleMap: map['ipRestrictionRuleMap'] == null ? null : pulumi.Output.create<Map<String, String>>((map['ipRestrictionRuleMap'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vpcEndpointIdRestrictionRuleMap: map['vpcEndpointIdRestrictionRuleMap'] == null ? null : pulumi.Output.create<Map<String, String>>((map['vpcEndpointIdRestrictionRuleMap'] as Map).cast<String, String>()),
      vpcIdRestrictionRuleMap: map['vpcIdRestrictionRuleMap'] == null ? null : pulumi.Output.create<Map<String, String>>((map['vpcIdRestrictionRuleMap'] as Map).cast<String, String>()),
    );
  }
}

