// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverConfig resources.
class ResolverConfigState {
  /// Indicates whether or not the Resolver will create autodefined rules for reverse DNS lookups. Valid values: `ENABLE`, `DISABLE`.
  final pulumi.Input<String>? autodefinedReverseFlag;
  /// The AWS account ID of the owner of the VPC that this resolver configuration applies to.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC that the configuration is for.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ResolverConfigState].
  /// [autodefinedReverseFlag] Indicates whether or not the Resolver will create autodefined rules for reverse DNS lookups. Valid values: `ENABLE`, `DISABLE`.
  /// [ownerId] The AWS account ID of the owner of the VPC that this resolver configuration applies to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] The ID of the VPC that the configuration is for.
  ResolverConfigState({
    pulumi.Output<String>? autodefinedReverseFlag,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceId,
  }) :
      autodefinedReverseFlag = pulumi.Input.asOptionalInput<String>(autodefinedReverseFlag),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autodefinedReverseFlag': ?autodefinedReverseFlag,
      'ownerId': ?ownerId,
      'region': ?region,
      'resourceId': ?resourceId,
    };
  }

  factory ResolverConfigState.fromMap(Map<String, dynamic> map) {
    return ResolverConfigState(
      autodefinedReverseFlag: map['autodefinedReverseFlag'] == null ? null : pulumi.Output.create<String>(map['autodefinedReverseFlag'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
    );
  }
}

