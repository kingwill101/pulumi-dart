// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_backend_service_compute_v1_args_doc}
/// Arguments for getBackendService.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_backend_service_compute_v1_args_doc}
class GetBackendServiceComputeV1Args {
  final pulumi.Input<String> backendService;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackendServiceComputeV1Args].
  /// [backendService] Required.
  /// [project] Optional.
  GetBackendServiceComputeV1Args({
    required String backendService,
    String? project,
  }) : backendService = pulumi.Input.asInput<String>(backendService),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': backendService,
      'project': ?project,
    };
  }

  factory GetBackendServiceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceComputeV1Args(
      backendService: map['backendService'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
