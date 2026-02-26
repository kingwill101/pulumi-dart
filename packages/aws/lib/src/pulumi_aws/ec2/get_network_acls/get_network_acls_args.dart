// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_acls_filter/get_network_acls_filter.dart';

/// Arguments for getNetworkAcls.
class GetNetworkAclsArgs {
  /// Custom filter block as described below.
  final Input<List<GetNetworkAclsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired network ACLs.
  final Input<Map<String, String>>? tags;

  /// VPC ID that you want to filter from.
  final Input<String>? vpcId;

  GetNetworkAclsArgs({
    this.filters,
    this.region,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetNetworkAclsFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetNetworkAclsFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
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

  factory GetNetworkAclsArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkAclsArgs(
      filters:
          Input.asOptionalInput<List<GetNetworkAclsFilter>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}
