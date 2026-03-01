// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_patch_baselines_filter.dart';

/// {@template pulumi_ssm_get_patch_baselines_get_patch_baselines_args_doc}
/// Arguments for getPatchBaselines.
/// {@endtemplate}
/// {@macro pulumi_ssm_get_patch_baselines_get_patch_baselines_args_doc}
class GetPatchBaselinesArgs {
  /// Only return baseline identities where `default_baseline` is `true`.
  final pulumi.Input<bool>? defaultBaselines;
  /// Key-value pairs used to filter the results. See `filter` below.
  final pulumi.Input<List<GetPatchBaselinesFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetPatchBaselinesArgs].
  /// [defaultBaselines] Only return baseline identities where `default_baseline` is `true`.
  /// [filters] Key-value pairs used to filter the results. See `filter` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetPatchBaselinesArgs({
    pulumi.Output<bool>? defaultBaselines,
    pulumi.Output<List<GetPatchBaselinesFilter>>? filters,
    pulumi.Output<String>? region,
  }) :
      defaultBaselines = pulumi.Input.asOptionalInput<bool>(defaultBaselines),
      filters = pulumi.Input.asOptionalInput<List<GetPatchBaselinesFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBaselines': ?defaultBaselines,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetPatchBaselinesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetPatchBaselinesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory GetPatchBaselinesArgs.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselinesArgs(
      defaultBaselines: map['defaultBaselines'] == null ? null : pulumi.Output.create<bool>(map['defaultBaselines'] as bool),
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetPatchBaselinesFilter>>(pulumi.Input.decodeList<GetPatchBaselinesFilter>(map['filters'], (value) => GetPatchBaselinesFilter.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

