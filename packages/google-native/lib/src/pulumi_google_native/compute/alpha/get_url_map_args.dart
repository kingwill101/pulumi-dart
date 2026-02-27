// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUrlMap.
class GetUrlMapArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> urlMap;

  GetUrlMapArgs({
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

  factory GetUrlMapArgs.fromMap(Map<String, dynamic> map) {
    return GetUrlMapArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      urlMap: pulumi.Input.asInput<String>(map['urlMap']),
    );
  }
}
