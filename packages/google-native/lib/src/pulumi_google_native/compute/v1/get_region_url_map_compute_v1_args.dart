// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionUrlMap.
class GetRegionUrlMapComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> urlMap;

  GetRegionUrlMapComputeV1Args({
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

  factory GetRegionUrlMapComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionUrlMapComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      urlMap: pulumi.Input.asInput<String>(map['urlMap']),
    );
  }
}
