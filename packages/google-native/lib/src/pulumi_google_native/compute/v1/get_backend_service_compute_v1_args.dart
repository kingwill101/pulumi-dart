// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBackendService.
class GetBackendServiceComputeV1Args {
  final pulumi.Input<String> backendService;
  final pulumi.Input<String>? project;

  GetBackendServiceComputeV1Args({
    required this.backendService,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendService'] = backendService;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackendServiceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceComputeV1Args(
      backendService: pulumi.Input.asInput<String>(map['backendService']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
