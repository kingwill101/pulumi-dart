// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_network_acl_egress.dart';
import 'default_network_acl_ingress.dart';

/// {@template pulumi_ec2_default_network_acl_default_network_acl_args_doc}
/// The set of arguments for DefaultNetworkAcl.
/// {@endtemplate}
/// {@macro pulumi_ec2_default_network_acl_default_network_acl_args_doc}
class DefaultNetworkAclArgs {
  /// Network ACL ID to manage. This attribute is exported from `aws.ec2.Vpc`, or manually found via the AWS Console.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> defaultNetworkAclId;
  /// Configuration block for an egress rule. Detailed below.
  final pulumi.Input<List<DefaultNetworkAclEgress>>? egress;
  /// Configuration block for an ingress rule. Detailed below.
  final pulumi.Input<List<DefaultNetworkAclIngress>>? ingress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of Subnet IDs to apply the ACL to. See the notes above on Managing Subnets in the Default Network ACL
  final pulumi.Input<List<String>>? subnetIds;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DefaultNetworkAclArgs].
  /// [defaultNetworkAclId] Network ACL ID to manage. This attribute is exported from `aws.ec2.Vpc`, or manually found via the AWS Console.
  /// [egress] Configuration block for an egress rule. Detailed below.
  /// [ingress] Configuration block for an ingress rule. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetIds] List of Subnet IDs to apply the ACL to. See the notes above on Managing Subnets in the Default Network ACL
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DefaultNetworkAclArgs({
    required this.defaultNetworkAclId,
    this.egress,
    this.ingress,
    this.region,
    this.subnetIds,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultNetworkAclId': defaultNetworkAclId,
      'egress': ?pulumi.Input.mapOptionalInputValue<List<DefaultNetworkAclEgress>, List<Map<String, dynamic>>>(egress, (value) => pulumi.Input.encodeList<DefaultNetworkAclEgress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingress': ?pulumi.Input.mapOptionalInputValue<List<DefaultNetworkAclIngress>, List<Map<String, dynamic>>>(ingress, (value) => pulumi.Input.encodeList<DefaultNetworkAclIngress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
    };
  }

  factory DefaultNetworkAclArgs.fromMap(Map<String, dynamic> map) {
    return DefaultNetworkAclArgs(
      defaultNetworkAclId: (map['defaultNetworkAclId'] as String).input(),
      egress: map['egress'] == null ? null : (pulumi.Input.decodeList<DefaultNetworkAclEgress>(map['egress'], (value) => DefaultNetworkAclEgress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingress: map['ingress'] == null ? null : (pulumi.Input.decodeList<DefaultNetworkAclIngress>(map['ingress'], (value) => DefaultNetworkAclIngress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      subnetIds: map['subnetIds'] == null ? null : ((map['subnetIds'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

