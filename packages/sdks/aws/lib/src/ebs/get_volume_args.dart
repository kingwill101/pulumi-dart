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
    pulumi.Output<List<GetVolumeFilter>>? filters,
    pulumi.Output<bool>? mostRecent,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetVolumeFilter>>(filters),
      mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetVolumeFilter>>(pulumi.Input.decodeList<GetVolumeFilter>(map['filters'], (value) => GetVolumeFilter.fromMap((value as Map).cast<String, dynamic>()))),
      mostRecent: map['mostRecent'] == null ? null : pulumi.Output.create<bool>(map['mostRecent'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

