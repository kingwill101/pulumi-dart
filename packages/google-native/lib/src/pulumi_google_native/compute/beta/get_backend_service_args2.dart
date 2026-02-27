// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBackendService.
class GetBackendServiceArgs2 {
  final Input<String> backendService;
  final Input<String>? project;

  GetBackendServiceArgs2({
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

  factory GetBackendServiceArgs2.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceArgs2(
      backendService: Input.asInput<String>(map['backendService']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
