// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;

/// The set of arguments for constructing a Security Group resource.
class SecurityGroup {
  /// Security group description. Defaults to `Managed by Pulumi`. Cannot be `""`. **NOTE**: This field maps to the AWS `GroupDescription` attribute, for which there is no Update API. If you'd like to classify your security groups in a way that can be updated, use `tags`.
  final String? description;
  /// Configuration block for egress rules. Can be specified multiple times for each egress rule. Each egress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  final List<pulumi_aws_ec2.SecurityGroupEgress>? egress;
  /// Configuration block for ingress rules. Can be specified multiple times for each ingress rule. Each ingress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  final List<pulumi_aws_ec2.SecurityGroupIngress>? ingress;
  /// Name of the security group. If omitted, the provider will assign a random, unique name.
  final String? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final String? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String? region;
  /// Instruct the provider to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself. This is normally not needed, however certain AWS services such as Elastic Map Reduce may automatically add required rules to security groups used with the service, and those rules may contain a cyclic dependency that prevent the security groups from being destroyed without removing the dependency first. Default `false`.
  final bool? revokeRulesOnDelete;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;
  /// VPC ID. Defaults to the region's default VPC.
  final String? vpcId;

  /// Creates a new [SecurityGroup].
  /// [description] Security group description. Defaults to `Managed by Pulumi`. Cannot be `""`. **NOTE**: This field maps to the AWS `GroupDescription` attribute, for which there is no Update API. If you'd like to classify your security groups in a way that can be updated, use `tags`.
  /// [egress] Configuration block for egress rules. Can be specified multiple times for each egress rule. Each egress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  /// [ingress] Configuration block for ingress rules. Can be specified multiple times for each ingress rule. Each ingress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  /// [name] Name of the security group. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revokeRulesOnDelete] Instruct the provider to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself. This is normally not needed, however certain AWS services such as Elastic Map Reduce may automatically add required rules to security groups used with the service, and those rules may contain a cyclic dependency that prevent the security groups from being destroyed without removing the dependency first. Default `false`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] VPC ID. Defaults to the region's default VPC.
  SecurityGroup({
    this.description,
    this.egress,
    this.ingress,
    this.name,
    this.namePrefix,
    this.region,
    this.revokeRulesOnDelete,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'egress': ?egress == null ? null : pulumi.Input.encodeList<pulumi_aws_ec2.SecurityGroupEgress, Map<String, dynamic>>(egress!, (value) => value.toMap()),
      'ingress': ?ingress == null ? null : pulumi.Input.encodeList<pulumi_aws_ec2.SecurityGroupIngress, Map<String, dynamic>>(ingress!, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'revokeRulesOnDelete': ?revokeRulesOnDelete,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory SecurityGroup.fromMap(Map<String, dynamic> map) {
    return SecurityGroup(
      description: map['description'] == null ? null : map['description'] as String,
      egress: map['egress'] == null ? null : pulumi.Input.decodeList<pulumi_aws_ec2.SecurityGroupEgress>(map['egress'], (value) => pulumi_aws_ec2.SecurityGroupEgress.fromMap((value as Map).cast<String, dynamic>())),
      ingress: map['ingress'] == null ? null : pulumi.Input.decodeList<pulumi_aws_ec2.SecurityGroupIngress>(map['ingress'], (value) => pulumi_aws_ec2.SecurityGroupIngress.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] == null ? null : map['namePrefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      revokeRulesOnDelete: map['revokeRulesOnDelete'] == null ? null : map['revokeRulesOnDelete'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

