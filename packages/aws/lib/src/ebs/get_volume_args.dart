// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_filter.dart';

/// {@template pulumi_ebs_get_volume_get_volume_args_doc}
/// Arguments for getVolume.
/// {@endtemplate}
/// {@macro pulumi_ebs_get_volume_get_volume_args_doc}
class GetVolumeArgs {
  /// One or more name/value pairs to filter off of. There are
  /// several valid keys, for a full reference, check out
  /// [describe-volumes in the AWS CLI reference][1].
  final pulumi.Input<List<GetVolumeFilter>>? filters;

  /// If more than one result is returned, use the most
  /// recent volume.
  final pulumi.Input<bool>? mostRecent;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetVolumeArgs].
  /// [filters] One or more name/value pairs to filter off of. There are
  /// [mostRecent] If more than one result is returned, use the most
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags for the resource.
  GetVolumeArgs({
    List<GetVolumeFilter>? filters,
    bool? mostRecent,
    String? region,
    Map<String, String>? tags,
  })  : filters = pulumi.Input.asOptionalInput<List<GetVolumeFilter>>(filters),
        mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<List<GetVolumeFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              pulumi.Input.encodeList<GetVolumeFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetVolumeArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVolumeFilter>(
              map['filters'],
              (value) => GetVolumeFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
