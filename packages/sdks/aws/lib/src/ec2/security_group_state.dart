// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group_egress.dart';
import 'security_group_ingress.dart';

/// Input properties used for looking up and filtering SecurityGroup resources.
class SecurityGroupState {
  /// ARN of the security group.
  final pulumi.Input<String>? arn;
  /// Security group description. Defaults to `Managed by Pulumi`. Cannot be `""`. **NOTE**: This field maps to the AWS `GroupDescription` attribute, for which there is no Update API. If you'd like to classify your security groups in a way that can be updated, use `tags`.
  final pulumi.Input<String>? description;
  /// Configuration block for egress rules. Can be specified multiple times for each egress rule. Each egress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  final pulumi.Input<List<SecurityGroupEgress>>? egress;
  /// Configuration block for ingress rules. Can be specified multiple times for each ingress rule. Each ingress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  final pulumi.Input<List<SecurityGroupIngress>>? ingress;
  /// Name of the security group. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Owner ID.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Instruct the provider to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself. This is normally not needed, however certain AWS services such as Elastic Map Reduce may automatically add required rules to security groups used with the service, and those rules may contain a cyclic dependency that prevent the security groups from being destroyed without removing the dependency first. Default `false`.
  final pulumi.Input<bool>? revokeRulesOnDelete;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// VPC ID. Defaults to the region's default VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [SecurityGroupState].
  /// [arn] ARN of the security group.
  /// [description] Security group description. Defaults to `Managed by Pulumi`. Cannot be `""`. **NOTE**: This field maps to the AWS `GroupDescription` attribute, for which there is no Update API. If you'd like to classify your security groups in a way that can be updated, use `tags`.
  /// [egress] Configuration block for egress rules. Can be specified multiple times for each egress rule. Each egress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  /// [ingress] Configuration block for ingress rules. Can be specified multiple times for each ingress rule. Each ingress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  /// [name] Name of the security group. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [ownerId] Owner ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revokeRulesOnDelete] Instruct the provider to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself. This is normally not needed, however certain AWS services such as Elastic Map Reduce may automatically add required rules to security groups used with the service, and those rules may contain a cyclic dependency that prevent the security groups from being destroyed without removing the dependency first. Default `false`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] VPC ID. Defaults to the region's default VPC.
  SecurityGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<List<SecurityGroupEgress>>? egress,
    pulumi.Output<List<SecurityGroupIngress>>? ingress,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? revokeRulesOnDelete,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      egress = pulumi.Input.asOptionalInput<List<SecurityGroupEgress>>(egress),
      ingress = pulumi.Input.asOptionalInput<List<SecurityGroupIngress>>(ingress),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      revokeRulesOnDelete = pulumi.Input.asOptionalInput<bool>(revokeRulesOnDelete),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'egress': ?pulumi.Input.mapOptionalInputValue<List<SecurityGroupEgress>, List<Map<String, dynamic>>>(egress, (value) => pulumi.Input.encodeList<SecurityGroupEgress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingress': ?pulumi.Input.mapOptionalInputValue<List<SecurityGroupIngress>, List<Map<String, dynamic>>>(ingress, (value) => pulumi.Input.encodeList<SecurityGroupIngress, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory SecurityGroupState.fromMap(Map<String, dynamic> map) {
    return SecurityGroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      egress: map['egress'] == null ? null : pulumi.Output.create<List<SecurityGroupEgress>>(pulumi.Input.decodeList<SecurityGroupEgress>(map['egress'], (value) => SecurityGroupEgress.fromMap((value as Map).cast<String, dynamic>()))),
      ingress: map['ingress'] == null ? null : pulumi.Output.create<List<SecurityGroupIngress>>(pulumi.Input.decodeList<SecurityGroupIngress>(map['ingress'], (value) => SecurityGroupIngress.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revokeRulesOnDelete: map['revokeRulesOnDelete'] == null ? null : pulumi.Output.create<bool>(map['revokeRulesOnDelete'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

