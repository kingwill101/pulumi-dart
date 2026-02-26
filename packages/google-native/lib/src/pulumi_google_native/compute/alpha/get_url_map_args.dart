// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUrlMap.
class GetUrlMapArgs {
  final Input<String>? project;
  final Input<String> urlMap;

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
      project: Input.asOptionalInput<String>(map['project']),
      urlMap: Input.asInput<String>(map['urlMap']),
    );
  }
}
