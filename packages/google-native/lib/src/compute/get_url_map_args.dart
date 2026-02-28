// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_url_map_args_doc}
/// Arguments for getUrlMap.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_url_map_args_doc}
class GetUrlMapArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> urlMap;

  /// Creates a new [GetUrlMapArgs].
  /// [project] Optional.
  /// [urlMap] Required.
  GetUrlMapArgs({
    String? project,
    required String urlMap,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        urlMap = pulumi.Input.asInput<String>(urlMap);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['urlMap'] = urlMap;
    return map;
  }

  factory GetUrlMapArgs.fromMap(Map<String, dynamic> map) {
    return GetUrlMapArgs(
      project: map['project'] == null ? null : map['project'] as String,
      urlMap: map['urlMap'] as String,
    );
  }
}
