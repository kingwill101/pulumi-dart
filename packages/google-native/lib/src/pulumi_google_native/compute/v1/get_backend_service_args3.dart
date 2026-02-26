// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBackendService.
class GetBackendServiceArgs3 {
  final Input<String> backendService;
  final Input<String>? project;

  GetBackendServiceArgs3({
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

  factory GetBackendServiceArgs3.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceArgs3(
      backendService: Input.asInput<String>(map['backendService']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
