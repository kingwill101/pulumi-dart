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
  /// [describe-volumes in the AWS CLI reference](http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-volumes.html).
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
  const GetVolumeArgs({
    this.filters,
    this.mostRecent,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVolumeFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVolumeFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mostRecent': ?mostRecent,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetVolumeArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetVolumeFilter>(guardedValue, (value) => GetVolumeFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
