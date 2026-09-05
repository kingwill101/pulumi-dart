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
  final pulumi.Input<List<DefaultSecurityGroupEgress>?>? egress;
  /// Configuration block. Detailed below.
  final pulumi.Input<List<DefaultSecurityGroupIngress>?>? ingress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<bool?>? revokeRulesOnDelete;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// VPC ID. **Note that changing the `vpcId` will _not_ restore any default security group rules that were modified, added, or removed.** It will be left in its current state.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [DefaultSecurityGroupArgs].
  /// [egress] Configuration block. Detailed below.
  /// [ingress] Configuration block. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revokeRulesOnDelete] Optional.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] VPC ID. **Note that changing the `vpcId` will _not_ restore any default security group rules that were modified, added, or removed.** It will be left in its current state.
  const DefaultSecurityGroupArgs({
    this.egress,
    this.ingress,
    this.region,
    this.revokeRulesOnDelete,
    this.tags,
    this.vpcId,
  });

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
      egress: (() { final guardedValue = map['egress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DefaultSecurityGroupEgress>(guardedValue, (value) => DefaultSecurityGroupEgress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ingress: (() { final guardedValue = map['ingress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DefaultSecurityGroupIngress>(guardedValue, (value) => DefaultSecurityGroupIngress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revokeRulesOnDelete: (() { final guardedValue = map['revokeRulesOnDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
