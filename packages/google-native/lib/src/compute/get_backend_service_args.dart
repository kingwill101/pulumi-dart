// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_backend_service_args_doc}
/// Arguments for getBackendService.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_backend_service_args_doc}
class GetBackendServiceArgs {
  final pulumi.Input<String> backendService;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackendServiceArgs].
  /// [backendService] Required.
  /// [project] Optional.
  GetBackendServiceArgs({
    required String backendService,
    String? project,
  })  : backendService = pulumi.Input.asInput<String>(backendService),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      backendService: map['backendService'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
