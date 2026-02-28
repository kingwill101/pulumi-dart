// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_url_map_compute_beta_args_doc}
/// Arguments for getRegionUrlMap.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_url_map_compute_beta_args_doc}
class GetRegionUrlMapComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> urlMap;

  /// Creates a new [GetRegionUrlMapComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [urlMap] Required.
  GetRegionUrlMapComputeBetaArgs({
    String? project,
    required String region,
    required String urlMap,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        urlMap = pulumi.Input.asInput<String>(urlMap);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['urlMap'] = urlMap;
    return map;
  }

  factory GetRegionUrlMapComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionUrlMapComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      urlMap: map['urlMap'] as String,
    );
  }
}
