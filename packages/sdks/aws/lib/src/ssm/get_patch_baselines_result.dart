// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_patch_baselines_baseline_identity.dart';
import 'get_patch_baselines_filter.dart';

/// Result data returned by getPatchBaselines.
class GetPatchBaselinesResult {
  /// List of baseline identities. See `baselineIdentities` below.
  final List<GetPatchBaselinesBaselineIdentity> baselineIdentities;
  final bool? defaultBaselines;
  final List<GetPatchBaselinesFilter>? filters;
  final String region;

  /// Creates a new [GetPatchBaselinesResult].
  /// [baselineIdentities] List of baseline identities. See `baselineIdentities` below.
  /// [defaultBaselines] Optional.
  /// [filters] Optional.
  /// [region] Required.
  const GetPatchBaselinesResult({
    required this.baselineIdentities,
    this.defaultBaselines,
    this.filters,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineIdentities': pulumi.Input.encodeList<GetPatchBaselinesBaselineIdentity, Map<String, dynamic>>(baselineIdentities, (value) => value.toMap()),
      'defaultBaselines': ?defaultBaselines,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPatchBaselinesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': region,
    };
  }

  factory GetPatchBaselinesResult.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselinesResult(
      baselineIdentities: pulumi.Input.decodeList<GetPatchBaselinesBaselineIdentity>(map['baselineIdentities']!, (value) => GetPatchBaselinesBaselineIdentity.fromMap((value as Map).cast<String, dynamic>())),
      defaultBaselines: (() { final guardedValue = map['defaultBaselines']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPatchBaselinesFilter>(guardedValue, (value) => GetPatchBaselinesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: map['region'] as String,
    );
  }
}
