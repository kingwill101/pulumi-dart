// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUrlMap.
class GetUrlMapComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> urlMap;

  GetUrlMapComputeV1Args({
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

  factory GetUrlMapComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetUrlMapComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      urlMap: pulumi.Input.asInput<String>(map['urlMap']),
    );
  }
}
