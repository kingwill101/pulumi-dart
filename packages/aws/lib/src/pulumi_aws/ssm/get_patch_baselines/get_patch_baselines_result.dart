// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_patch_baselines_baseline_identity/get_patch_baselines_baseline_identity.dart';
import '../get_patch_baselines_filter/get_patch_baselines_filter.dart';

/// Result data returned by getPatchBaselines.
class GetPatchBaselinesResult {
  /// List of baseline identities. See <span pulumi-lang-nodejs="`baselineIdentities`" pulumi-lang-dotnet="`BaselineIdentities`" pulumi-lang-go="`baselineIdentities`" pulumi-lang-python="`baseline_identities`" pulumi-lang-yaml="`baselineIdentities`" pulumi-lang-java="`baselineIdentities`">`baseline_identities`</span> below.
  final List<GetPatchBaselinesBaselineIdentity> baselineIdentities;
  final bool? defaultBaselines;
  final List<GetPatchBaselinesFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetPatchBaselinesResult({
    required this.baselineIdentities,
    this.defaultBaselines,
    this.filters,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baselineIdentities'] = Input.encodeList<
        GetPatchBaselinesBaselineIdentity,
        Map<String, dynamic>>(baselineIdentities, (value) => value.toMap());
    final defaultBaselinesValue = defaultBaselines;
    if (defaultBaselinesValue != null) {
      map['defaultBaselines'] = defaultBaselinesValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetPatchBaselinesFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetPatchBaselinesResult.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselinesResult(
      baselineIdentities: Input.decodeList<GetPatchBaselinesBaselineIdentity>(
          map['baselineIdentities'],
          (value) => GetPatchBaselinesBaselineIdentity.fromMap(
              (value as Map).cast<String, dynamic>())),
      defaultBaselines: map['defaultBaselines'] == null
          ? null
          : map['defaultBaselines'] as bool,
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetPatchBaselinesFilter>(
              map['filters'],
              (value) => GetPatchBaselinesFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
