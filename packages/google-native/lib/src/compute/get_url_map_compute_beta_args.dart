// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_url_map_compute_beta_args_doc}
/// Arguments for getUrlMap.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_url_map_compute_beta_args_doc}
class GetUrlMapComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> urlMap;

  /// Creates a new [GetUrlMapComputeBetaArgs].
  /// [project] Optional.
  /// [urlMap] Required.
  GetUrlMapComputeBetaArgs({String? project, required String urlMap})
    : project = pulumi.Input.asOptionalInput<String>(project),
      urlMap = pulumi.Input.asInput<String>(urlMap);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'urlMap': urlMap};
  }

  factory GetUrlMapComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetUrlMapComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      urlMap: map['urlMap'] as String,
    );
  }
}
