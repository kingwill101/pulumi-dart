// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_security_group_egress.dart';
import 'default_security_group_ingress.dart';

/// {@template pulumi_ec2_default_security_group_default_security_group_args_doc}
/// The set of arguments for DefaultSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_ec2_default_security_group_default_security_group_args_doc}
class DefaultSecurityGroupArgs {
  /// Configuration block. Detailed below.
  final pulumi.Input<List<DefaultSecurityGroupEgress>>? egress;
  /// Configuration block. Detailed below.
  final pulumi.Input<List<DefaultSecurityGroupIngress>>? ingress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<bool>? revokeRulesOnDelete;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// VPC ID. **Note that changing the `vpc_id` will _not_ restore any default security group rules that were modified, added, or removed.** It will be left in its current state.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [DefaultSecurityGroupArgs].
  /// [egress] Configuration block. Detailed below.
  /// [ingress] Configuration block. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revokeRulesOnDelete] Optional.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] VPC ID. **Note that changing the `vpc_id` will _not_ restore any default security group rules that were modified, added, or removed.** It will be left in its current state.
  DefaultSecurityGroupArgs({
    pulumi.Output<List<DefaultSecurityGroupEgress>>? egress,
    pulumi.Output<List<DefaultSecurityGroupIngress>>? ingress,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? revokeRulesOnDelete,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
  }) :
      egress = pulumi.Input.asOptionalInput<List<DefaultSecurityGroupEgress>>(egress),
      ingress = pulumi.Input.asOptionalInput<List<DefaultSecurityGroupIngress>>(ingress),
      region = pulumi.Input.asOptionalInput<String>(region),
      revokeRulesOnDelete = pulumi.Input.asOptionalInput<bool>(revokeRulesOnDelete),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egress': ?pulumi.Input.mapOptionalInputValue<List<DefaultSecurityGroupEgress>, List<Map<String, dynamic>>>(egress, (value) => pulumi.Input.encodeList<DefaultSecurityGroupEgress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingress': ?pulumi.Input.mapOptionalInputValue<List<DefaultSecurityGroupIngress>, List<Map<String, dynamic>>>(ingress, (value) => pulumi.Input.encodeList<DefaultSecurityGroupIngress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'revokeRulesOnDelete': ?revokeRulesOnDelete,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory DefaultSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return DefaultSecurityGroupArgs(
      egress: map['egress'] == null ? null : pulumi.Output.create<List<DefaultSecurityGroupEgress>>(pulumi.Input.decodeList<DefaultSecurityGroupEgress>(map['egress'], (value) => DefaultSecurityGroupEgress.fromMap((value as Map).cast<String, dynamic>()))),
      ingress: map['ingress'] == null ? null : pulumi.Output.create<List<DefaultSecurityGroupIngress>>(pulumi.Input.decodeList<DefaultSecurityGroupIngress>(map['ingress'], (value) => DefaultSecurityGroupIngress.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revokeRulesOnDelete: map['revokeRulesOnDelete'] == null ? null : pulumi.Output.create<bool>(map['revokeRulesOnDelete'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

