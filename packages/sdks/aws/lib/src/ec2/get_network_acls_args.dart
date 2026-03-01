// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_acls_filter.dart';

/// {@template pulumi_ec2_get_network_acls_get_network_acls_args_doc}
/// Arguments for getNetworkAcls.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_network_acls_get_network_acls_args_doc}
class GetNetworkAclsArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetNetworkAclsFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired network ACLs.
  final pulumi.Input<Map<String, String>>? tags;
  /// VPC ID that you want to filter from.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetNetworkAclsArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match
  /// [vpcId] VPC ID that you want to filter from.
  GetNetworkAclsArgs({
    pulumi.Output<List<GetNetworkAclsFilter>>? filters,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetNetworkAclsFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetNetworkAclsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetNetworkAclsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetNetworkAclsArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkAclsArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetNetworkAclsFilter>>(pulumi.Input.decodeList<GetNetworkAclsFilter>(map['filters'], (value) => GetNetworkAclsFilter.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

