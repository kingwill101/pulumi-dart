// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_volume_filter/get_volume_filter.dart';

/// Arguments for getVolume.
class GetVolumeArgs {
  /// One or more name/value pairs to filter off of. There are
  /// several valid keys, for a full reference, check out
  /// [describe-volumes in the AWS CLI reference][1].
  final Input<List<GetVolumeFilter>>? filters;

  /// If more than one result is returned, use the most
  /// recent volume.
  final Input<bool>? mostRecent;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags for the resource.
  final Input<Map<String, String>>? tags;

  GetVolumeArgs({
    this.filters,
    this.mostRecent,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetVolumeFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetVolumeFilter, Map<String, dynamic>>(
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
      filters: Input.asOptionalInput<List<GetVolumeFilter>>(map['filters']),
      mostRecent: Input.asOptionalInput<bool>(map['mostRecent']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
