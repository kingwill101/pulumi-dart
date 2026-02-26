// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionBackendService.
class GetRegionBackendServiceArgs2 {
  final Input<String> backendService;
  final Input<String>? project;
  final Input<String> region;

  GetRegionBackendServiceArgs2({
    required this.backendService,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendService'] = backendService;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionBackendServiceArgs2.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceArgs2(
      backendService: Input.asInput<String>(map['backendService']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
