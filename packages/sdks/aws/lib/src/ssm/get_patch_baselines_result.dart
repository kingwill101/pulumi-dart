// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_patch_baselines_baseline_identity.dart';
import 'get_patch_baselines_filter.dart';

/// Result data returned by getPatchBaselines.
class GetPatchBaselinesResult {
  /// List of baseline identities. See `baseline_identities` below.
  final List<GetPatchBaselinesBaselineIdentity> baselineIdentities;
  final bool? defaultBaselines;
  final List<GetPatchBaselinesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetPatchBaselinesResult].
  /// [baselineIdentities] List of baseline identities. See `baseline_identities` below.
  /// [defaultBaselines] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetPatchBaselinesResult({
    required this.baselineIdentities,
    this.defaultBaselines,
    this.filters,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineIdentities': pulumi.Input.encodeList<GetPatchBaselinesBaselineIdentity, Map<String, dynamic>>(baselineIdentities, (value) => value.toMap()),
      'defaultBaselines': ?defaultBaselines,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetPatchBaselinesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'region': region,
    };
  }

  factory GetPatchBaselinesResult.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselinesResult(
      baselineIdentities: pulumi.Input.decodeList<GetPatchBaselinesBaselineIdentity>(map['baselineIdentities']!, (value) => GetPatchBaselinesBaselineIdentity.fromMap((value as Map).cast<String, dynamic>())),
      defaultBaselines: map['defaultBaselines'] == null ? null : map['defaultBaselines'] as bool,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetPatchBaselinesFilter>(map['filters']!, (value) => GetPatchBaselinesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

