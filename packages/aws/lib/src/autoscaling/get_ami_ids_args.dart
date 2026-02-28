// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ami_ids_filter.dart';

/// {@template pulumi_autoscaling_get_ami_ids_get_ami_ids_args_doc}
/// Arguments for getAmiIds.
/// {@endtemplate}
/// {@macro pulumi_autoscaling_get_ami_ids_get_ami_ids_args_doc}
class GetAmiIdsArgs {
  /// Filter used to scope the list e.g., by tags. See [related docs](http://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_Filter.html).
  final pulumi.Input<List<GetAmiIdsFilter>>? filters;
  /// List of autoscaling group names
  final pulumi.Input<List<String>>? names;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAmiIdsArgs].
  /// [filters] Filter used to scope the list e.g., by tags. See [related docs](http://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_Filter.html).
  /// [names] List of autoscaling group names
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetAmiIdsArgs({
    List<GetAmiIdsFilter>? filters,
    List<String>? names,
    String? region,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetAmiIdsFilter>>(filters),
      names = pulumi.Input.asOptionalInput<List<String>>(names),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetAmiIdsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetAmiIdsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'names': ?names,
      'region': ?region,
    };
  }

  factory GetAmiIdsArgs.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetAmiIdsFilter>(map['filters'], (value) => GetAmiIdsFilter.fromMap((value as Map).cast<String, dynamic>())),
      names: map['names'] == null ? null : (map['names'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

