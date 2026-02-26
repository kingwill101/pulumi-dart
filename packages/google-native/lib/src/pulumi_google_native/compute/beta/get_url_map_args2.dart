// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUrlMap.
class GetUrlMapArgs2 {
  final Input<String>? project;
  final Input<String> urlMap;

  GetUrlMapArgs2({
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

  factory GetUrlMapArgs2.fromMap(Map<String, dynamic> map) {
    return GetUrlMapArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      urlMap: Input.asInput<String>(map['urlMap']),
    );
  }
}
