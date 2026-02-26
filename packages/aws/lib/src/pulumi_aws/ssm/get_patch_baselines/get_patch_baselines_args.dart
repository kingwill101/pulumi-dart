// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_patch_baselines_filter/get_patch_baselines_filter.dart';

/// Arguments for getPatchBaselines.
class GetPatchBaselinesArgs {
  /// Only return baseline identities where <span pulumi-lang-nodejs="`defaultBaseline`" pulumi-lang-dotnet="`DefaultBaseline`" pulumi-lang-go="`defaultBaseline`" pulumi-lang-python="`default_baseline`" pulumi-lang-yaml="`defaultBaseline`" pulumi-lang-java="`defaultBaseline`">`default_baseline`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? defaultBaselines;

  /// Key-value pairs used to filter the results. See <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> below.
  final Input<List<GetPatchBaselinesFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      map['filters'] = Input.mapOptionalInputValue<
              List<GetPatchBaselinesFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetPatchBaselinesFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetPatchBaselinesArgs.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselinesArgs(
      defaultBaselines: Input.asOptionalInput<bool>(map['defaultBaselines']),
      filters:
          Input.asOptionalInput<List<GetPatchBaselinesFilter>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
