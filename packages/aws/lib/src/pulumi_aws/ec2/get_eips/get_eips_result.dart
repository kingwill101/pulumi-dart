// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_eips_filter/get_eips_filter.dart';

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

  GetEipsResult({
    required this.allocationIds,
    this.filters,
    required this.id,
    required this.publicIps,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocationIds'] = allocationIds;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.encodeList<GetEipsFilter, Map<String, dynamic>>(
          filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['publicIps'] = publicIps;
    map['region'] = region;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetEipsResult.fromMap(Map<String, dynamic> map) {
    return GetEipsResult(
      allocationIds: (map['allocationIds'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetEipsFilter>(
              map['filters'],
              (value) => GetEipsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      publicIps: (map['publicIps'] as List).cast<String>(),
      region: map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
