// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBackendService.
class GetBackendServiceArgs {
  final Input<String> backendService;
  final Input<String>? project;

  GetBackendServiceArgs({
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

  factory GetBackendServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceArgs(
      backendService: Input.asInput<String>(map['backendService']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
