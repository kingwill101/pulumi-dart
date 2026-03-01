// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipams_filter.dart';
import 'get_vpc_ipams_ipam.dart';

/// Result data returned by getVpcIpams.
class GetVpcIpamsResult {
  final List<GetVpcIpamsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String>? ipamIds;

  /// List of IPAM resources matching the provided arguments.
  final List<GetVpcIpamsIpam> ipams;
  final String region;

  /// Creates a new [GetVpcIpamsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipamIds] Optional.
  /// [ipams] List of IPAM resources matching the provided arguments.
  /// [region] Required.
  GetVpcIpamsResult({
    this.filters,
    required this.id,
    this.ipamIds,
    required this.ipams,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<GetVpcIpamsFilter, Map<String, dynamic>>(
              filters!,
              (value) => value.toMap(),
            ),
      'id': id,
      'ipamIds': ?ipamIds,
      'ipams': pulumi.Input.encodeList<GetVpcIpamsIpam, Map<String, dynamic>>(
        ipams,
        (value) => value.toMap(),
      ),
      'region': region,
    };
  }

  factory GetVpcIpamsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVpcIpamsFilter>(
              map['filters'],
              (value) => GetVpcIpamsFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] as String,
      ipamIds: map['ipamIds'] == null
          ? null
          : (map['ipamIds'] as List).cast<String>(),
      ipams: pulumi.Input.decodeList<GetVpcIpamsIpam>(
        map['ipams'],
        (value) =>
            GetVpcIpamsIpam.fromMap((value as Map).cast<String, dynamic>()),
      ),
      region: map['region'] as String,
    );
  }
}
