// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionUrlMap.
class GetRegionUrlMapArgs3 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> urlMap;

  GetRegionUrlMapArgs3({
    this.project,
    required this.region,
    required this.urlMap,
  });

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

  factory GetRegionUrlMapArgs3.fromMap(Map<String, dynamic> map) {
    return GetRegionUrlMapArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      urlMap: Input.asInput<String>(map['urlMap']),
    );
  }
}
