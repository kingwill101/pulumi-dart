// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getUrlMap.
class GetUrlMapArgs3 {
  final Input<String>? project;
  final Input<String> urlMap;

  GetUrlMapArgs3({
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

  factory GetUrlMapArgs3.fromMap(Map<String, dynamic> map) {
    return GetUrlMapArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      urlMap: Input.asInput<String>(map['urlMap']),
    );
  }
}
