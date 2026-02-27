// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUrlMap.
class GetUrlMapComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> urlMap;

  GetUrlMapComputeBetaArgs({
    this.project,
    required this.urlMap,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['urlMap'] = urlMap;
    return map;
  }

  factory GetUrlMapComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetUrlMapComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      urlMap: pulumi.Input.asInput<String>(map['urlMap']),
    );
  }
}
