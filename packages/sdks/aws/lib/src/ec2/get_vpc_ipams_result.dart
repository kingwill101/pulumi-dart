// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipams_filter.dart';
import 'get_vpc_ipams_ipam.dart';

/// Result data returned by getVpcIpams.
class GetVpcIpamsResult {
  final List<GetVpcIpamsFilter>? filters;
  final List<String>? ipamIds;
  /// List of IPAM resources matching the provided arguments.
  final List<GetVpcIpamsIpam>? ipams;
  final String? region;

  /// Creates a new [GetVpcIpamsResult].
  /// [filters] Optional.
  /// [ipamIds] Optional.
  /// [ipams] List of IPAM resources matching the provided arguments.
  /// [region] Optional.
  const GetVpcIpamsResult({
    this.filters,
    this.ipamIds,
    this.ipams,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcIpamsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ipamIds': ?ipamIds,
      'ipams': ?(() { final guardedValue = ipams; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcIpamsIpam, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetVpcIpamsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcIpamsFilter>(guardedValue, (value) => GetVpcIpamsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      ipamIds: (() { final guardedValue = map['ipamIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ipams: (() { final guardedValue = map['ipams']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcIpamsIpam>(guardedValue, (value) => GetVpcIpamsIpam.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
