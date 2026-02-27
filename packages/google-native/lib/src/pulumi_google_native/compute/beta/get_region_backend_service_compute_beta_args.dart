// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionBackendService.
class GetRegionBackendServiceComputeBetaArgs {
  final pulumi.Input<String> backendService;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetRegionBackendServiceComputeBetaArgs({
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

  factory GetRegionBackendServiceComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRegionBackendServiceComputeBetaArgs(
      backendService: pulumi.Input.asInput<String>(map['backendService']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
