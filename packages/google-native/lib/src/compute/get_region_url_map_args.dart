// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_url_map_args_doc}
/// Arguments for getRegionUrlMap.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_url_map_args_doc}
class GetRegionUrlMapArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> urlMap;

  /// Creates a new [GetRegionUrlMapArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [urlMap] Required.
  GetRegionUrlMapArgs({
    String? project,
    required String region,
    required String urlMap,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region),
       urlMap = pulumi.Input.asInput<String>(urlMap);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'urlMap': urlMap,
    };
  }

  factory GetRegionUrlMapArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionUrlMapArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      urlMap: map['urlMap'] as String,
    );
  }
}
