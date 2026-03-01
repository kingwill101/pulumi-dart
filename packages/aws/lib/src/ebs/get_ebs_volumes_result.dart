// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ebs_volumes_filter.dart';

/// Result data returned by getEbsVolumes.
class GetEbsVolumesResult {
  final List<GetEbsVolumesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Set of all the EBS Volume IDs found. This data source will fail if
  /// no volumes match the provided criteria.
  final List<String> ids;
  final String region;
  final Map<String, String>? tags;

  /// Creates a new [GetEbsVolumesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of all the EBS Volume IDs found. This data source will fail if
  /// [region] Required.
  /// [tags] Optional.
  GetEbsVolumesResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetEbsVolumesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'region': region,
      'tags': ?tags,
    };
  }

  factory GetEbsVolumesResult.fromMap(Map<String, dynamic> map) {
    return GetEbsVolumesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetEbsVolumesFilter>(map['filters'], (value) => GetEbsVolumesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

