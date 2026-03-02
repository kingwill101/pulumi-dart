// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_groups_filter.dart';

/// {@template pulumi_ec2_get_security_groups_get_security_groups_args_doc}
/// Arguments for getSecurityGroups.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_security_groups_get_security_groups_args_doc}
class GetSecurityGroupsArgs {
  /// One or more name/value pairs to use as filters. There are several valid keys, for a full reference, check out [describe-security-groups in the AWS CLI reference][1].
  final pulumi.Input<List<GetSecurityGroupsFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags, each pair of which must exactly match for desired security groups.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSecurityGroupsArgs].
  /// [filters] One or more name/value pairs to use as filters. There are several valid keys, for a full reference, check out [describe-security-groups in the AWS CLI reference][1].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match for desired security groups.
  GetSecurityGroupsArgs({
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetSecurityGroupsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetSecurityGroupsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetSecurityGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupsArgs(
      filters: map['filters'] == null ? null : ((pulumi.Input.decodeList<GetSecurityGroupsFilter>(map['filters']!, (value) => GetSecurityGroupsFilter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

