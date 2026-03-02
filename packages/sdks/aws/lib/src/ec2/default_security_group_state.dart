// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_security_group_egress.dart';
import 'default_security_group_ingress.dart';

/// Input properties used for looking up and filtering DefaultSecurityGroup resources.
class DefaultSecurityGroupState {
  /// ARN of the security group.
  final pulumi.Input<String>? arn;
  /// Description of the security group.
  final pulumi.Input<String>? description;
  /// Configuration block. Detailed below.
  final pulumi.Input<List<DefaultSecurityGroupEgress>>? egress;
  /// Configuration block. Detailed below.
  final pulumi.Input<List<DefaultSecurityGroupIngress>>? ingress;
  /// Name of the security group.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? namePrefix;
  /// Owner ID.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<bool>? revokeRulesOnDelete;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// VPC ID. **Note that changing the `vpc_id` will _not_ restore any default security group rules that were modified, added, or removed.** It will be left in its current state.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [DefaultSecurityGroupState].
  /// [arn] ARN of the security group.
  /// [description] Description of the security group.
  /// [egress] Configuration block. Detailed below.
  /// [ingress] Configuration block. Detailed below.
  /// [name] Name of the security group.
  /// [namePrefix] Optional.
  /// [ownerId] Owner ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revokeRulesOnDelete] Optional.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] VPC ID. **Note that changing the `vpc_id` will _not_ restore any default security group rules that were modified, added, or removed.** It will be left in its current state.
  DefaultSecurityGroupState({
    this.arn,
    this.description,
    this.egress,
    this.ingress,
    this.name,
    this.namePrefix,
    this.ownerId,
    this.region,
    this.revokeRulesOnDelete,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'egress': ?pulumi.Input.mapOptionalInputValue<List<DefaultSecurityGroupEgress>, List<Map<String, dynamic>>>(egress, (value) => pulumi.Input.encodeList<DefaultSecurityGroupEgress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingress': ?pulumi.Input.mapOptionalInputValue<List<DefaultSecurityGroupIngress>, List<Map<String, dynamic>>>(ingress, (value) => pulumi.Input.encodeList<DefaultSecurityGroupIngress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'ownerId': ?ownerId,
      'region': ?region,
      'revokeRulesOnDelete': ?revokeRulesOnDelete,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory DefaultSecurityGroupState.fromMap(Map<String, dynamic> map) {
    return DefaultSecurityGroupState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      egress: map['egress'] == null ? null : (pulumi.Input.decodeList<DefaultSecurityGroupEgress>(map['egress'], (value) => DefaultSecurityGroupEgress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingress: map['ingress'] == null ? null : (pulumi.Input.decodeList<DefaultSecurityGroupIngress>(map['ingress'], (value) => DefaultSecurityGroupIngress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      revokeRulesOnDelete: map['revokeRulesOnDelete'] == null ? null : (map['revokeRulesOnDelete'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

