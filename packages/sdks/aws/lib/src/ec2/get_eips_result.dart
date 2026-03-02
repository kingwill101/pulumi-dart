// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_eips_filter.dart';

/// Result data returned by getEips.
class GetEipsResult {
  /// List of all the allocation IDs for address for use with EC2-VPC.
  final List<String> allocationIds;
  final List<GetEipsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of all the Elastic IP addresses.
  final List<String> publicIps;
  final String region;
  final Map<String, String>? tags;

  /// Creates a new [GetEipsResult].
  /// [allocationIds] List of all the allocation IDs for address for use with EC2-VPC.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [publicIps] List of all the Elastic IP addresses.
  /// [region] Required.
  /// [tags] Optional.
  GetEipsResult({
    required this.allocationIds,
    this.filters,
    required this.id,
    required this.publicIps,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationIds': allocationIds,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetEipsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'publicIps': publicIps,
      'region': region,
      'tags': ?tags,
    };
  }

  factory GetEipsResult.fromMap(Map<String, dynamic> map) {
    return GetEipsResult(
      allocationIds: (map['allocationIds'] as List).cast<String>(),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetEipsFilter>(map['filters']!, (value) => GetEipsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      publicIps: (map['publicIps'] as List).cast<String>(),
      region: map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

