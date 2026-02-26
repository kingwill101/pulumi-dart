// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpc_filter/get_vpc_filter.dart';

/// Arguments for getVpc.
class GetVpcArgs {
  /// Cidr block of the desired VPC.
  final Input<String>? cidrBlock;

  /// Boolean constraint on whether the desired VPC is
  /// the default VPC for the region.
  final Input<bool>? default_;

  /// DHCP options id of the desired VPC.
  final Input<String>? dhcpOptionsId;

  /// Custom filter block as described below.
  final Input<List<GetVpcFilter>>? filters;

  /// ID of the specific VPC to retrieve.
  final Input<String>? id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Current state of the desired VPC.
  /// Can be either `"pending"` or `"available"`.
  final Input<String>? state;

  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired VPC.
  ///
  /// More complex filters can be expressed using one or more <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> sub-blocks,
  /// which take the following arguments:
  final Input<Map<String, String>>? tags;

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
      map['filters'] = Input.mapOptionalInputValue<List<GetVpcFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetVpcFilter, Map<String, dynamic>>(
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
      cidrBlock: Input.asOptionalInput<String>(map['cidrBlock']),
      default_: Input.asOptionalInput<bool>(map['default']),
      dhcpOptionsId: Input.asOptionalInput<String>(map['dhcpOptionsId']),
      filters: Input.asOptionalInput<List<GetVpcFilter>>(map['filters']),
      id: Input.asOptionalInput<String>(map['id']),
      region: Input.asOptionalInput<String>(map['region']),
      state: Input.asOptionalInput<String>(map['state']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
