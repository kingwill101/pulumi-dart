// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_filter.dart';

/// {@template pulumi_ssm_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_ssm_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetInstancesFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetInstancesArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetInstancesArgs({
    pulumi.Output<List<GetInstancesFilter>>? filters,
    pulumi.Output<String>? region,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetInstancesFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetInstancesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetInstancesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetInstancesFilter>>(pulumi.Input.decodeList<GetInstancesFilter>(map['filters'], (value) => GetInstancesFilter.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

