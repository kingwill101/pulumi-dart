// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_group_filter.dart';

/// {@template pulumi_ec2_get_security_group_get_security_group_args_doc}
/// Arguments for getSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_security_group_get_security_group_args_doc}
class GetSecurityGroupArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetSecurityGroupFilter>>? filters;
  /// Id of the specific security group to retrieve.
  final pulumi.Input<String>? id;
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroups.html).
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired security group.
  final pulumi.Input<Map<String, String>>? tags;
  /// Id of the VPC that the desired security group belongs to.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetSecurityGroupArgs].
  /// [filters] Custom filter block as described below.
  /// [id] Id of the specific security group to retrieve.
  /// [name] Name of the field to filter by, as defined by
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match
  /// [vpcId] Id of the VPC that the desired security group belongs to.
  GetSecurityGroupArgs({
    this.filters,
    this.id,
    this.name,
    this.region,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetSecurityGroupFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetSecurityGroupFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupArgs(
      filters: map['filters'] == null ? null : ((pulumi.Input.decodeList<GetSecurityGroupFilter>(map['filters']!, (value) => GetSecurityGroupFilter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

