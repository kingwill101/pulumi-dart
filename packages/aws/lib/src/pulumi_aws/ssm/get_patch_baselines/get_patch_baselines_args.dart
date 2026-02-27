// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_patch_baselines_filter/get_patch_baselines_filter.dart';

/// Arguments for getPatchBaselines.
class GetPatchBaselinesArgs {
  /// Only return baseline identities where `default_baseline` is `true`.
  final pulumi.Input<bool>? defaultBaselines;

  /// Key-value pairs used to filter the results. See `filter` below.
  final pulumi.Input<List<GetPatchBaselinesFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetPatchBaselinesArgs({
    this.defaultBaselines,
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultBaselinesValue = defaultBaselines;
    if (defaultBaselinesValue != null) {
      map['defaultBaselines'] = defaultBaselinesValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetPatchBaselinesFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetPatchBaselinesFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetPatchBaselinesArgs.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselinesArgs(
      defaultBaselines:
          pulumi.Input.asOptionalInput<bool>(map['defaultBaselines']),
      filters: pulumi.Input.asOptionalInput<List<GetPatchBaselinesFilter>>(
          map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
