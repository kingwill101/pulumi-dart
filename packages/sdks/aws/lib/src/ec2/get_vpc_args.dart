// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_filter.dart';

/// {@template pulumi_ec2_get_vpc_get_vpc_args_doc}
/// Arguments for getVpc.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_vpc_get_vpc_args_doc}
class GetVpcArgs {
  /// Cidr block of the desired VPC.
  final pulumi.Input<String>? cidrBlock;
  /// Boolean constraint on whether the desired VPC is
  /// the default VPC for the region.
  final pulumi.Input<bool>? default_;
  /// DHCP options id of the desired VPC.
  final pulumi.Input<String>? dhcpOptionsId;
  /// Custom filter block as described below.
  final pulumi.Input<List<GetVpcFilter>>? filters;
  /// ID of the specific VPC to retrieve.
  final pulumi.Input<String>? id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Current state of the desired VPC.
  /// Can be either `"pending"` or `"available"`.
  final pulumi.Input<String>? state;
  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired VPC.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetVpcArgs].
  /// [cidrBlock] Cidr block of the desired VPC.
  /// [default_] Boolean constraint on whether the desired VPC is
  /// [dhcpOptionsId] DHCP options id of the desired VPC.
  /// [filters] Custom filter block as described below.
  /// [id] ID of the specific VPC to retrieve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] Current state of the desired VPC.
  /// [tags] Map of tags, each pair of which must exactly match
  GetVpcArgs({
    this.cidrBlock,
    this.default_,
    this.dhcpOptionsId,
    this.filters,
    this.id,
    this.region,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'default': ?default_,
      'dhcpOptionsId': ?dhcpOptionsId,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVpcFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVpcFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory GetVpcArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcArgs(
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock'] as String).input(),
      default_: map['default'] == null ? null : (map['default'] as bool).input(),
      dhcpOptionsId: map['dhcpOptionsId'] == null ? null : (map['dhcpOptionsId'] as String).input(),
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetVpcFilter>(map['filters'], (value) => GetVpcFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

