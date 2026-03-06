// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipams_filter.dart';

/// {@template pulumi_ec2_get_vpc_ipams_get_vpc_ipams_args_doc}
/// Arguments for getVpcIpams.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_vpc_ipams_get_vpc_ipams_args_doc}
class GetVpcIpamsArgs {
  /// Custom filter block as described below.
  ///
  /// The arguments of this data source act as filters for querying the available IPAMs.
  final pulumi.Input<List<GetVpcIpamsFilter>>? filters;
  /// IDs of the IPAM resources to query for.
  final pulumi.Input<List<String>>? ipamIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetVpcIpamsArgs].
  /// [filters] Custom filter block as described below.
  /// [ipamIds] IDs of the IPAM resources to query for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetVpcIpamsArgs({
    this.filters,
    this.ipamIds,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVpcIpamsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVpcIpamsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipamIds': ?ipamIds,
      'region': ?region,
    };
  }

  factory GetVpcIpamsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpcIpamsFilter>(guardedValue, (value) => GetVpcIpamsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipamIds: (() { final guardedValue = map['ipamIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

