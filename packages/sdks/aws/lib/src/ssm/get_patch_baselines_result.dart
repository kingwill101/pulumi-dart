// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_patch_baselines_baseline_identity.dart';
import 'get_patch_baselines_filter.dart';

/// Result data returned by getPatchBaselines.
class GetPatchBaselinesResult {
  /// List of baseline identities. See `baselineIdentities` below.
  final List<GetPatchBaselinesBaselineIdentity>? baselineIdentities;
  final bool? defaultBaselines;
  final List<GetPatchBaselinesFilter>? filters;
  final String? region;

  /// Creates a new [GetPatchBaselinesResult].
  /// [baselineIdentities] List of baseline identities. See `baselineIdentities` below.
  /// [defaultBaselines] Optional.
  /// [filters] Optional.
  /// [region] Optional.
  const GetPatchBaselinesResult({
    this.baselineIdentities,
    this.defaultBaselines,
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineIdentities': ?(() { final guardedValue = baselineIdentities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPatchBaselinesBaselineIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'defaultBaselines': ?defaultBaselines,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPatchBaselinesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetPatchBaselinesResult.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselinesResult(
      baselineIdentities: (() { final guardedValue = map['baselineIdentities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPatchBaselinesBaselineIdentity>(guardedValue, (value) => GetPatchBaselinesBaselineIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      defaultBaselines: (() { final guardedValue = map['defaultBaselines']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPatchBaselinesFilter>(guardedValue, (value) => GetPatchBaselinesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
