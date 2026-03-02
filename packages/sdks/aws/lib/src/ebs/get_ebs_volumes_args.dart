// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ebs_volumes_filter.dart';

/// {@template pulumi_ebs_get_ebs_volumes_get_ebs_volumes_args_doc}
/// Arguments for getEbsVolumes.
/// {@endtemplate}
/// {@macro pulumi_ebs_get_ebs_volumes_get_ebs_volumes_args_doc}
class GetEbsVolumesArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetEbsVolumesFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired volumes.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEbsVolumesArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match
  GetEbsVolumesArgs({
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetEbsVolumesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetEbsVolumesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetEbsVolumesArgs.fromMap(Map<String, dynamic> map) {
    return GetEbsVolumesArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetEbsVolumesFilter>(map['filters'], (value) => GetEbsVolumesFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

