// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_patch_baselines_filter.dart';

/// {@template pulumi_ssm_get_patch_baselines_get_patch_baselines_args_doc}
/// Arguments for getPatchBaselines.
/// {@endtemplate}
/// {@macro pulumi_ssm_get_patch_baselines_get_patch_baselines_args_doc}
class GetPatchBaselinesArgs {
  /// Only return baseline identities where `defaultBaseline` is `true`.
  final pulumi.Input<bool>? defaultBaselines;
  /// Key-value pairs used to filter the results. See `filter` below.
  final pulumi.Input<List<GetPatchBaselinesFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetPatchBaselinesArgs].
  /// [defaultBaselines] Only return baseline identities where `defaultBaseline` is `true`.
  /// [filters] Key-value pairs used to filter the results. See `filter` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetPatchBaselinesArgs({
    this.defaultBaselines,
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBaselines': ?defaultBaselines,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetPatchBaselinesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetPatchBaselinesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory GetPatchBaselinesArgs.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselinesArgs(
      defaultBaselines: (() { final guardedValue = map['defaultBaselines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetPatchBaselinesFilter>(guardedValue, (value) => GetPatchBaselinesFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
