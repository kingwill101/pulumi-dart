// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group_egress.dart';
import 'security_group_ingress.dart';

/// {@template pulumi_ec2_security_group_security_group_args_doc}
/// The set of arguments for SecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_ec2_security_group_security_group_args_doc}
class SecurityGroupArgs {
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

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Instruct the provider to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself. This is normally not needed, however certain AWS services such as Elastic Map Reduce may automatically add required rules to security groups used with the service, and those rules may contain a cyclic dependency that prevent the security groups from being destroyed without removing the dependency first. Default `false`.
  final pulumi.Input<bool>? revokeRulesOnDelete;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// VPC ID. Defaults to the region's default VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [SecurityGroupArgs].
  /// [description] Security group description. Defaults to `Managed by Pulumi`. Cannot be `""`. **NOTE**: This field maps to the AWS `GroupDescription` attribute, for which there is no Update API. If you'd like to classify your security groups in a way that can be updated, use `tags`.
  /// [egress] Configuration block for egress rules. Can be specified multiple times for each egress rule. Each egress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  /// [ingress] Configuration block for ingress rules. Can be specified multiple times for each ingress rule. Each ingress block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  /// [name] Name of the security group. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revokeRulesOnDelete] Instruct the provider to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself. This is normally not needed, however certain AWS services such as Elastic Map Reduce may automatically add required rules to security groups used with the service, and those rules may contain a cyclic dependency that prevent the security groups from being destroyed without removing the dependency first. Default `false`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] VPC ID. Defaults to the region's default VPC.
  SecurityGroupArgs({
    String? description,
    List<SecurityGroupEgress>? egress,
    List<SecurityGroupIngress>? ingress,
    String? name,
    String? namePrefix,
    String? region,
    bool? revokeRulesOnDelete,
    Map<String, String>? tags,
    String? vpcId,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        egress =
            pulumi.Input.asOptionalInput<List<SecurityGroupEgress>>(egress),
        ingress =
            pulumi.Input.asOptionalInput<List<SecurityGroupIngress>>(ingress),
        name = pulumi.Input.asOptionalInput<String>(name),
        namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
        region = pulumi.Input.asOptionalInput<String>(region),
        revokeRulesOnDelete =
            pulumi.Input.asOptionalInput<bool>(revokeRulesOnDelete),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final egressValue = egress;
    if (egressValue != null) {
      map['egress'] = pulumi.Input.mapOptionalInputValue<
              List<SecurityGroupEgress>, List<Map<String, dynamic>>>(
          egressValue,
          (value) => pulumi.Input.encodeList<SecurityGroupEgress,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final ingressValue = ingress;
    if (ingressValue != null) {
      map['ingress'] = pulumi.Input.mapOptionalInputValue<
              List<SecurityGroupIngress>, List<Map<String, dynamic>>>(
          ingressValue,
          (value) => pulumi.Input.encodeList<SecurityGroupIngress,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final revokeRulesOnDeleteValue = revokeRulesOnDelete;
    if (revokeRulesOnDeleteValue != null) {
      map['revokeRulesOnDelete'] = revokeRulesOnDeleteValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory SecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGroupArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      egress: map['egress'] == null
          ? null
          : pulumi.Input.decodeList<SecurityGroupEgress>(
              map['egress'],
              (value) => SecurityGroupEgress.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ingress: map['ingress'] == null
          ? null
          : pulumi.Input.decodeList<SecurityGroupIngress>(
              map['ingress'],
              (value) => SecurityGroupIngress.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      revokeRulesOnDelete: map['revokeRulesOnDelete'] == null
          ? null
          : map['revokeRulesOnDelete'] as bool,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
