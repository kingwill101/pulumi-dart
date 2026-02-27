// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_vpc_filter/get_vpc_filter.dart';

/// Arguments for getVpc.
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
    final map = <String, dynamic>{};
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final default_Value = default_;
    if (default_Value != null) {
      map['default'] = default_Value;
    }
    final dhcpOptionsIdValue = dhcpOptionsId;
    if (dhcpOptionsIdValue != null) {
      map['dhcpOptionsId'] = dhcpOptionsIdValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<List<GetVpcFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              pulumi.Input.encodeList<GetVpcFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetVpcArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcArgs(
      cidrBlock: pulumi.Input.asOptionalInput<String>(map['cidrBlock']),
      default_: pulumi.Input.asOptionalInput<bool>(map['default']),
      dhcpOptionsId: pulumi.Input.asOptionalInput<String>(map['dhcpOptionsId']),
      filters: pulumi.Input.asOptionalInput<List<GetVpcFilter>>(map['filters']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      state: pulumi.Input.asOptionalInput<String>(map['state']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
